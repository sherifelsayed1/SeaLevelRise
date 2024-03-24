function varargout = project_interface(varargin)
% PROJECT_INTERFACE MATLAB code for project_interface.fig
%      PROJECT_INTERFACE, by itself, creates a new PROJECT_INTERFACE or raises the existing
%      singleton*.
%
%      H = PROJECT_INTERFACE returns the handle to a new PROJECT_INTERFACE or the handle to
%      the existing singleton*.
%
%      PROJECT_INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_INTERFACE.M with the given input arguments.
%
%      PROJECT_INTERFACE('Property','Value',...) creates a new PROJECT_INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project_interface

% Last Modified by GUIDE v2.5 29-Jun-2013 12:23:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_interface_OpeningFcn, ...
                   'gui_OutputFcn',  @project_interface_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before project_interface is made visible.
function project_interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project_interface (see VARARGIN)

% Choose default command line output for project_interface
handles.output = hObject;
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('back.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');
% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
map=imread('map3.jpg');
view(2);
axis off
imagesc([-180 180], [-90 90],map);

set(handles.uipanel4,'Visible','off'); 
set(handles.pushbutton33,'Visible','off');
set(handles.uipanel7,'Visible','off'); 
set(handles.pushbutton4,'Visible','off');
set(handles.uipanel17,'Visible','off'); 
% 
% load_data
% ground_track_motion



% axes(handles.axes3);
% imshow('back.jpg');
% hold on;
% imshow('logo.png');
% UIWAIT makes project_interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_interface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% errordlg('File not found','File Error');
s_choose=get(handles.radiobutton9,'Value');
s_choose_2=get(handles.radiobutton10,'Value');
if(s_choose==1)
    folder=1;
end
if(s_choose_2==1)
    folder=2;
end


s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');

if(s1<=s2)
    errordlg('The Second Choice should be later in date than the first Choice','Choice error');
    set(handles.popupmenu4,'Value',1);
    return
end

axes(handles.axes1);

colorbar
view(2);
load_data
cla
s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');
if(folder==1)
    start=s2+32;
    end_c=s1+32;
end
if(folder==2)
    start=s2+33;
    end_c=s1+33;
end
final_box(-180,180,-90,90,start,end_c,folder);



% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'Cycle 33', 'Cycle 34', 'Cycle 35', 'Cycle 36', 'Cycle 37','Cycle 38','Cycle 39','Cycle 40','Cycle 41','Cycle 42','Cycle 43','Cycle 44','Cycle 45','Cycle 46','Cycle 47','Cycle 48','Cycle 49','Cycle 50','Cycle 51','Cycle 52','Cycle 53','Cycle 54','Cycle 55','Cycle 56','Cycle 57','Cycle 58','Cycle 59','Cycle 60','Cycle 61','Cycle 62','Cycle 63','Cycle 64'});

% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5

% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'Cycle 33', 'Cycle 34', 'Cycle 35', 'Cycle 36', 'Cycle 37','Cycle 38','Cycle 39','Cycle 40','Cycle 41','Cycle 42','Cycle 43','Cycle 44','Cycle 45','Cycle 46','Cycle 47','Cycle 48','Cycle 49','Cycle 50','Cycle 51','Cycle 52','Cycle 53','Cycle 54','Cycle 55','Cycle 56','Cycle 57','Cycle 58','Cycle 59','Cycle 60','Cycle 61','Cycle 62','Cycle 63','Cycle 64'});

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
% set(handles.uipanel7,'Visible','Off');
s_e=get(handles.radiobutton9,'Value');
s_j=get(handles.radiobutton10,'Value');

if(s_e==0&&s_j==0)
    errordlg('Please Select one satellite','Choice error');
    set(handles.radiobutton3,'Value',0);
    return
end

s=get(handles.radiobutton3,'Value');
if(s==1)
   set(handles.uipanel7,'Visible','On'); 
   set(handles.pushbutton4,'Visible','On');
else
    set(handles.uipanel7,'Visible','off'); 
    set(handles.pushbutton4,'Visible','off');
end


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
s_e=get(handles.radiobutton9,'Value');
s_j=get(handles.radiobutton10,'Value');

if(s_e==0&&s_j==0)
    errordlg('Please Select one satellite','Choice error');
    set(handles.radiobutton4,'Value',0);
    return
end
s=get(handles.radiobutton4,'Value');
if(s==1)
   set(handles.uipanel4,'Visible','On'); 
   set(handles.pushbutton33,'Visible','On');
else
    set(handles.uipanel4,'Visible','off'); 
    set(handles.pushbutton33,'Visible','off');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
s_choose=get(handles.radiobutton9,'Value');
s_choose_2=get(handles.radiobutton10,'Value');
if(s_choose==1)
    folder=1;
end
if(s_choose_2==1)
    folder=2;
end

s1=get(handles.radiobutton6,'Value');
s2=get(handles.radiobutton7,'Value');
if(s1==1)
   cla
   colorbar('off');
   run(['envisat_tracking/get_data(' num2str(folder) ').m'])
   run(['envisat_tracking/main_Tracking(' num2str(folder) ').m'])
end
if(s2==1)
    cla
    colorbar('off');
    run(['envisat_tracking/get_data(' num2str(folder) ').m'])
    run(['envisat_tracking/main_SKYPLOT(' num2str(folder) ').m'])
    
    
   
end
if(s1==0&&s2==0)
    
    msgbox('Please choose one mode to run','Warning','Help');
end




% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
s_e=get(handles.radiobutton9,'Value');
s_j=get(handles.radiobutton10,'Value');

if(s_e==0&&s_j==0)
    errordlg('Please Select one satellite','Choice error');
    set(handles.radiobutton5,'Value',0);
    return
end

s=get(handles.radiobutton5,'Value');
if(s==1)
   set(handles.uipanel17,'Visible','On'); 

else
    set(handles.uipanel17,'Visible','off');

end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s_choose=get(handles.radiobutton9,'Value');
s_choose_2=get(handles.radiobutton10,'Value');
if(s_choose==1)
    folder=1;
end
if(s_choose_2==1)
    folder=2;
end

s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');

if(s1<=s2)
    errordlg('The Second Choice should be later in date than the first Choice','Choice error');
    set(handles.popupmenu4,'Value',1);
    return
end
cla
if(folder==1)
    s1= get(handles.popupmenu5, 'Value');
    s2= get(handles.popupmenu4, 'Value');
    start=s2+32;
    end_c=s1+32;
end
if(folder==2)
    s1= get(handles.popupmenu5, 'Value');
    s2= get(handles.popupmenu4, 'Value');
    start=s2+33;
    end_c=s1+33;
end
sim_change([],start,end_c,folder);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s_choose=get(handles.radiobutton9,'Value');
s_choose_2=get(handles.radiobutton10,'Value');
if(s_choose==1)
    folder=1;
end
if(s_choose_2==1)
    folder=2;
end

s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');

if(s1<=s2)
    errordlg('The Second Choice should be later in date than the first Choice','Choice error');
    set(handles.popupmenu4,'Value',1);
    return
end
axes(handles.axes1);
colorbar
view(2);
cla
long_min=str2double(get(handles.edit13,'string'));
long_max = str2double(get(handles.edit14,'string'));
lat_min = str2double(get(handles.edit15,'string'));
lat_max = str2double(get(handles.edit16,'string'));
cla
s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');
if(folder==1)
  
    start=s2+32;
    end_c=s1+32;
end
if(folder==2)

    start=s2+33;
    end_c=s1+33;
end



try
        sim_change([long_min long_max lat_min lat_max],start,end_c,folder);
 catch 
         errordlg('Please Check your inputs','Input Error');
end 




% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
s=get(handles.radiobutton6,'Value');
if(s==1)
    set(handles.radiobutton7,'Value',0);
end

% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7
s=get(handles.radiobutton7,'Value');
if(s==1)
    set(handles.radiobutton6,'Value',0);
end

% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s_choose=get(handles.radiobutton9,'Value');
s_choose_2=get(handles.radiobutton10,'Value');
if(s_choose==1)
    folder=1;
end
if(s_choose_2==1)
    folder=2;
end

s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');
if(s1<=s2)
    errordlg('The Second Choice should be later in date than the first Choice','Choice error');
    set(handles.popupmenu4,'Value',1);
    return
end

axes(handles.axes1);
colorbar
view(2);
cla
load_data
% ground_track_motion
% run('rotation/Main_Orbit_Motion.m')
long_min=str2double(get(handles.edit13,'string'));
long_max = str2double(get(handles.edit14,'string'));
lat_min = str2double(get(handles.edit15,'string'));
lat_max = str2double(get(handles.edit16,'string'));
s1= get(handles.popupmenu5, 'Value');
s2= get(handles.popupmenu4, 'Value');
if(folder==1)
    start=s2+32;
    end_c=s1+32;
end
if(folder==2)
    start=s2+33;
    end_c=s1+33;
end
cla
try
        final_box(long_min,long_max,lat_min,lat_max,start,end_c,folder);
 catch 
         errordlg('Please Check your inputs','Input Error');
end 


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9
s=get(handles.radiobutton9,'Value');
if(s==0)
    set(handles.uipanel7,'Visible','off'); 
    set(handles.uipanel4,'Visible','off'); 
    set(handles.uipanel17,'Visible','off'); 
    set(handles.radiobutton3,'Value',0);
    set(handles.radiobutton4,'Value',0);
    set(handles.radiobutton5,'Value',0);
end
if(s==1)
    set(handles.radiobutton10,'Value',0);
end
set(handles.popupmenu4, 'String', {'Cycle 33','Cycle 34', 'Cycle 35', 'Cycle 36', 'Cycle 37','Cycle 38','Cycle 39','Cycle 40','Cycle 41','Cycle 42','Cycle 43','Cycle 44','Cycle 45','Cycle 46','Cycle 47','Cycle 48','Cycle 49','Cycle 50','Cycle 51','Cycle 52','Cycle 53','Cycle 54','Cycle 55','Cycle 56','Cycle 57','Cycle 58','Cycle 59','Cycle 60','Cycle 61','Cycle 62','Cycle 63','Cycle 64'});
set(handles.popupmenu5, 'String', {'Cycle 33','Cycle 34', 'Cycle 35', 'Cycle 36', 'Cycle 37','Cycle 38','Cycle 39','Cycle 40','Cycle 41','Cycle 42','Cycle 43','Cycle 44','Cycle 45','Cycle 46','Cycle 47','Cycle 48','Cycle 49','Cycle 50','Cycle 51','Cycle 52','Cycle 53','Cycle 54','Cycle 55','Cycle 56','Cycle 57','Cycle 58','Cycle 59','Cycle 60','Cycle 61','Cycle 62','Cycle 63','Cycle 64'});
set(handles.popupmenu4,'Value',1);
set(handles.popupmenu5,'Value',1);


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10
s=get(handles.radiobutton10,'Value');
if(s==0)
    set(handles.uipanel7,'Visible','off'); 
    set(handles.uipanel4,'Visible','off'); 
    set(handles.uipanel17,'Visible','off'); 
    set(handles.radiobutton3,'Value',0);
    set(handles.radiobutton4,'Value',0);
    set(handles.radiobutton5,'Value',0);
end
if(s==1)
    set(handles.radiobutton9,'Value',0);
end
set(handles.popupmenu4, 'String', {'Cycle 34', 'Cycle 35', 'Cycle 36', 'Cycle 37','Cycle 38','Cycle 39','Cycle 40','Cycle 41','Cycle 42','Cycle 43','Cycle 44','Cycle 45','Cycle 46','Cycle 47','Cycle 48','Cycle 49','Cycle 50','Cycle 51','Cycle 52','Cycle 53','Cycle 54','Cycle 55','Cycle 56','Cycle 57','Cycle 58','Cycle 59','Cycle 60','Cycle 61','Cycle 62','Cycle 63','Cycle 64'});
set(handles.popupmenu5, 'String', {'Cycle 34', 'Cycle 35', 'Cycle 36', 'Cycle 37','Cycle 38','Cycle 39','Cycle 40','Cycle 41','Cycle 42','Cycle 43','Cycle 44','Cycle 45','Cycle 46','Cycle 47','Cycle 48','Cycle 49','Cycle 50','Cycle 51','Cycle 52','Cycle 53','Cycle 54','Cycle 55','Cycle 56','Cycle 57','Cycle 58','Cycle 59','Cycle 60','Cycle 61','Cycle 62','Cycle 63','Cycle 64'});
set(handles.popupmenu4,'Value',1);
set(handles.popupmenu5,'Value',1);