require 'spec_helper'
   describe "Static pages" do
   let(:base_title) { "Ruby on Rails Tutorial Sample App" }
     
            subject { page }
			describe "Home page" do

				before { visit root_path }

=begin				
				it "should have the content 'Sample App'" do					
					page.should have_content('Sample App')		
			    end

			     it "should have the h1 'Sample App'" do					
					page.should have_selector('h1', :text => 'Sample App')
                 end
				it "should have the title 'Home'" do					
					page.should have_selector('title',
					:text => "Ruby on Rails Tutorial Sample App")
				end
				it "should not have a custom page title" do					
					page.should_not have_selector('title', :text => '| Home')
                 end
=end
				it { should have_selector('h1', text: 'Sample App') }
				it { should have_selector('title', text: full_title('')) }
				it { should_not have_selector 'title', text: '| Home' }
			

               



	        end

			describe "Help page" do
=begin				
				it "should have the content 'Help'" do
					visit help_path
					page.should have_content('Help')
			    end

			    it "should have the h1 'Help'" do
					visit help_path
					page.should have_selector('h1', :text => 'Help')
				end
				it "should have the title 'Help'" do
					visit help_path
					page.should have_selector('title',
					:text => "Ruby on Rails Tutorial Sample App | Help")
				end
=end		

				before { visit help_path }
			
				it { should have_selector('h1',  	text: 'Help') }
				it { should have_selector('title', text: full_title('Help')) }		
			end

			describe "About page" do

=begin					
				it "should have the content 'About Us'" do
					visit about_path
					page.should have_content('About Us')
			    end
                
                it "should have the h1 'About Us'" do
					visit about_path
					page.should have_selector('h1', :text => 'About Us')
                end
				it "should have the title 'About Us'" do
					visit about_path
					page.should have_selector('title',
					:text => "Ruby on Rails Tutorial Sample App | About Us")
				end
=end				

				before { visit about_path }
				
				it { should have_selector('h1',  text: 'About') }
				it { should have_selector('title', text: full_title('About Us')) }

	         end

	         describe "Contact page" do

=begin	         	
				it "should have the content 'Sample App'" do
					visit contact_path
					page.should have_content('Sample App')		
			    end	

                 it "should have the h1 'Contact'" do
					visit contact_path
					page.should have_selector('h1', :text => 'Contact')
			    end	  

		        it "should have the title 'Contact Us'" do
					visit contact_path
					page.should have_selector('title',
					:text => "Ruby on Rails Tutorial Sample App | Contact")
				end		
                 it "should have the h1 'Contact'" do
					 visit contact_path
					 page.should have_selector('h1', text: 'Contact')
                 end
				it "should have the title 'Contact'" do
					visit contact_path
					page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
				end

=end				


					before { visit contact_path }
				
					it { should have_selector('h1', text: 'Contact') }
					it { should have_selector('title', text: full_title('Contact')) }

		        
	        end

    end