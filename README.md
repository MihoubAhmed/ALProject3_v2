![image](https://github.com/user-attachments/assets/27ed626b-88f6-4ae0-8ff4-59bed9bcace0)
![image](https://github.com/user-attachments/assets/9dc52ca7-73e2-4f5e-9824-b7327e8c17a7)

# Business Central Developer Tips: Picture Handling Feature

This extension demonstrates how to manage pictures in Business Central. It includes a Student table, a Student Card page, a Student List page, and a part page for displaying student pictures. The extension allows users to upload, view, and manage pictures for each student. This feature can be used as a reference for handling pictures in other projects.

## Features

- **Picture Management**: Actions to upload and delete pictures for each student. The "Take Picture" action is under development.
- **Student Card Page**: A card page to view and edit student details, including a factbox to display the student's picture.
- **Student List Page**: A list page to view all students, including a thumbnail picture for each student.
- **Student Picture Part Page**: A part page used as a factbox on the Student Card page to display the student's picture.

## Purpose

This project aims to help Business Central developers find useful tips and examples to enhance their development skills. The project will be regularly updated with new features and tips to assist developers in their work. This particular feature focuses on handling pictures within Business Central.

## Installation

1. Clone the repository to your local machine.
2. Open the project in Visual Studio Code.
3. Ensure you have the AL Language extension installed.
4. Update the `launch.json` file with your Business Central server details.
5. Press `F5` to deploy the extension to your Business Central environment.

## Usage

### Student Card Page

- **Upload Picture**: Use the "Upload Picture" action to upload a picture for the student.
- **Take Picture**: The "Take Picture" action is under development.
- **Delete Picture**: Use the "Delete Picture" action to delete the student's picture.

### Student List Page

- View all students with their details and thumbnail pictures.

## Files

- **Tables/Tab50100.Student.al**: Defines the Student table.
- **Pages/Pag50100.StudentList.al**: Defines the Student List page.
- **Pages/Card50100.StudentCard.al**: Defines the Student Card page.
- **Parts/Part50101.StudentPicture.al**: Defines the Student Picture part page.

## Contributing

This is an open and public project, and contributions are welcome! If you have any ideas, suggestions, or improvements, please fork the repository and submit a pull request. Your contributions will help make this project better for everyone.

## License

This project is licensed under the MIT License.
