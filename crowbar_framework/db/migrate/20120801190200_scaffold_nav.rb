# Copyright 2012, Dell
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class ScaffoldNav < ActiveRecord::Migration
  def self.up

    Nav.find_or_create_by_item :item=>'scaffold', :name=>'nav.scaffold.top', :path=>"scaffolds_nodes_path", :description=>'nav.scaffold.top_description', :order=>7000, :development=>true
  
    Nav.find_or_create_by_item :item=>'scaffold_barclamps', :parent_item=>'scaffold', :name=>'nav.scaffold.barclamps',  :path=>"scaffolds_barclamps_path", :order=>1000, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_nodes', :parent_item=>'scaffold', :name=>'nav.scaffold.nodes', :path=>"scaffolds_nodes_path", :order=>2000, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_roles', :parent_item=>'scaffold', :name=>'nav.scaffold.roles', :path=>"scaffolds_roles_path", :order=>2100, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_groups', :parent_item=>'scaffold', :name=>'nav.scaffold.groups', :path=>"scaffolds_groups_path", :order=>2300, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_proposals', :parent_item=>'scaffold', :name=>'nav.scaffold.proposals', :path=>"scaffolds_proposals_path", :order=>3500, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_configs', :parent_item=>'scaffold', :name=>'nav.scaffold.configs', :path=>"scaffolds_proposal_configs_path", :order=>3500, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_nav', :parent_item=>'scaffold', :name=>'nav.scaffold.menus', :path=>"scaffolds_navs_path", :order=>5400, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_docs', :parent_item=>'scaffold', :name=>'nav.scaffold.docs', :path=>"scaffolds_docs_path", :order=>5500, :development=>true
    Nav.find_or_create_by_item :item=>'scaffold_cmdb_attributes', :parent_item=>'scaffold', :name=>'nav.scaffold.cmdb_attributes', :path=>"scaffolds_cmdb_attributes_path", :order=>5600, :development=>true

  end

  def self.down
    Nav.delete(Nav.find_by_item 'scaffold_barclamps')
    Nav.delete(Nav.find_by_item 'scaffold_nodes')
    Nav.delete(Nav.find_by_item 'scaffold_roles')
    Nav.delete(Nav.find_by_item 'scaffold_groups')
    Nav.delete(Nav.find_by_item 'scaffold_proposals')
    Nav.delete(Nav.find_by_item 'scaffold_configs')
    Nav.delete(Nav.find_by_item 'scaffold_nav')
    Nav.delete(Nav.find_by_item 'scaffold_docs')
    Nav.delete(Nav.find_by_item 'scaffold_cmdb_attributes')
    Nav.delete(Nav.find_by_item 'scaffold')
  end
end
