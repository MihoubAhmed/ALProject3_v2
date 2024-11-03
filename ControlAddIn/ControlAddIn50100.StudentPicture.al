controladdin "StudentPictureControlAddIn"
{
    Scripts = 'ControlAddIn/StudentPictureControlAddIn.js';
    StartupScript = 'ControlAddIn/StudentPictureControlAddIn.js';

    RequestedHeight = 200;
    RequestedWidth = 200;

    HorizontalStretch = true;
    VerticalStretch = true;

    event AddInReady();
    event UpdateImage(imageUrl: Text);

    procedure UpdateImageUrl(imageUrl: Text);
    procedure ClearImage();
}