# Clean_Arch_project

# Description

Implement Clean Architecture: Presentation Layer Logic with Dependency Injection

This Project made using a Clean Architecture structure with the data, domain, and presentation
layers.

# Structure

The structure is:

- **app folder**: contains MyApp widget.       
- **core folder**: contains base use case and service locator class to achieve dependency injection (using get_it package).    
- **users_feature**: in this app, we have one feature so, the folder name is users feature instead of
  features.       
  It contains:
   - Data Layer    
   - Domain Layer      
   - Presentation Layer      

**Data Layer** contains (models(user-model) and concrete repository folders).             
**Domain Layer** contains (entities (user-entity), base repository, and use cases folders).    
**Presentation Layer** contains (screens and users cubit folders).    

  Initialize Service locator class using init method in main file.                             
- We use a simple use case to get users data and return dummy list of users objects.                               
- The home page contains list view of users data, which come after calling getUsersData method from  
  cubit object using fetch data button (Outlined button in home).                    
- The cubit gets user data using getUsersUseCase paranmeter (inside the use case, the repository class is called and retutns the users data).

---------------------------------------

## How to Run

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Run `flutter run` to start the app.

----------------------------

# Packages Used

equatable: For comparing objects and reduce memory space => https://pub.dev/packages/equatable.        
flutter_bloc: For Bloc / cubit state management => https://pub.dev/packages/flutter_bloc.     
get_it: To apply dependency injection and singleton pattern => https://pub.dev/packages/get_it.

---------------------------------------------------

The screens in lib/users_feature/presentation_layer/screens.      
**The output images in images folder.**        
