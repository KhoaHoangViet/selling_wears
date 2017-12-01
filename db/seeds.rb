Product.create! code: 'XYZ-1234',
                name: 'Kimono Sleeve Shirt',
                lable: 'shirt',
                price: 10.80,
                img_url: 'XYZ-1234_Kimono_Sleeve_Shirt.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1367',
                name: 'Diamond Print Bodycon',
                lable: 'dress',
                price: 18.00,
                img_url: 'XYZ-1367_Diamond_Print_Bodycon_Dress.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1466',
                name: 'Pleated',
                lable: 'dress',
                price: 20.00,
                img_url: 'XYZ-1466_Pleated_Dress.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1660',
                name: 'Halter Neck Ponte',
                lable: 'dress',
                price: 17.00,
                img_url: 'XYZ-1660_Halter_Neck_Ponte_Dress.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1688',
                name: 'Ponte solid',
                lable: 'dress',
                price: 20.00,
                img_url: 'XYZ-1688_Ponte_solid_Dress.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1736',
                name: 'Rose Printed',
                lable: 'dress',
                price: 50.00,
                img_url: 'XYZ-1736_Rose_Printed_Dress.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1847',
                name: 'Abstract Print Strappy',
                lable: 'dress',
                price: 50.00,
                img_url: 'XYZ-1847_Abstract_Print_Strappy_Dress.jpg',
                description: Faker::Lorem.paragraph

Product.create! code: 'XYZ-1877',
                name: 'Floral Neck Tie',
                lable: 'dress',
                price: 50.00,
                img_url: 'XYZ-1877_Floral_Neck_Tie_Dress.jpg',
                description: Faker::Lorem.paragraph

User.create!  name: 'Adminitrator',
              email: 'admin@admin.com',
              password: 'admin@123',
              password_confirmation: 'admin@123',
              admin: true

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n + 1}@selling-wear.com"
  password = 'password'
  User.create!  name:  name,
                email: email,
                password: password,
                password_confirmation: password
end
