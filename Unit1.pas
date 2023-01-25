unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsdelphisystem,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls,
  Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TForm1 = class(TWebForm)
    WebHTMLDiv1: TWebHTMLDiv;
    WebLabel1: TWebLabel;
    WebHTMLDiv2: TWebHTMLDiv;
    WebLabel2: TWebLabel;
    WebHTMLDiv3: TWebHTMLDiv;
    ColorLabel: TWebLabel;
    WebLabel4: TWebLabel;
    WebHTMLDiv4: TWebHTMLDiv;
    WebLabel5: TWebLabel;
    [async] procedure WebFormCreate(Sender: TObject);
    procedure MyButtonClick(event: JSValue);
    procedure MySwitchChanged(switchstate: Boolean);
    procedure MyColorPickerChanged(hexacolor: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MyButtonClick(event: JSValue);
var
  event_id: String;
begin
  event_id := 'undefined';
  asm
    event_id = event.target.id;
  end;
  ShowMessage('Button was clicked: '+event_id);
end;

procedure TForm1.MyColorPickerChanged(hexacolor: String);
begin
  ColorLabel.Caption := hexacolor;
end;

procedure TForm1.MySwitchChanged(switchstate: Boolean);
begin
  if switchstate
  then ShowMessage('Switch is ON')
  else ShowMessage('Switch is OFF');
end;

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Link Button Click to Delph function
  asm
   var here = pas.Unit1.Form1;
   var MBC = pas.Unit1.Form1.MyButtonClick;
   var thisMBC = here.MyButtonClick;
   mybutton.addEventListener("click", function(event) {
      MBC(event);
      here.MyButtonClick(event);  // does the same thing
      thisMBC(event);  // does the same thing
    });
  end;

  // Link Switch to Delphi function
  asm
    myswitch.addEventListener("sl-change", event => {
      this.MySwitchChanged(event.target.checked);
    });
  end;


  // Add Color Picker swatches
  asm
//    mycolorpicker.swatches = [
//      '#202020','#404040','#606060','gray',  '#A0A0A0','silver', '#E0E0E0', 'white',
//      '#200000','#400000','#600000','maroon','#A00000','#C00000','#E00000', 'red',
//      '#002000','#004000','#006000','green', '#00A000','#00C000','#00E000', 'lime',
//      '#000020','#000040','#000060','navy',  '#0000A0','#0000C0','#0000E0', 'blue',
//      '#200020','#400040','#600060','purple','#A000A0','#C000C0','#E000E0', 'fuchsia',
//      '#202000','#404000','#606000','olive', '#A0A000','#C0C000','#E0E000', 'yellow',
//      '#002020','#004040','#006060','teal',  '#00A0A0','#00C0C0','#00E0E0', 'aqua',
//      'black',  'gold',   'pink',   'orange','tomato', 'brown', 'deepskyblue','royalblue'
//    ];

    var swatch_names = {
      '#202020':'Gray 32',
      '#404040':'Gray 64',
      '#606060':'Gray 96',
      '#808080':'Gray 128 (Gray)',
      '#A0A0A0':'Gray 160',
      '#C0C0C0':'Gray 192 (Silver)',
      '#E0E0E0':'Gray 224',
      '#FFFFFF':'White',

      '#200000':'#200000',
      '#400000':'#400000',
      '#600000':'#600000',
      '#800000':'Maroon',
      '#A00000':'#A00000',
      '#C00000':'#C00000',
      '#E00000':'#E00000',
      '#FF0000':'Red',

      '#002000':'#002000',
      '#004000':'#004000',
      '#006000':'#006000',
      '#008000':'Green',
      '#00A000':'#00A000',
      '#00C000':'#00C000',
      '#00E000':'#00E000',
      '#00FF00':'Lime',

      '#000020':'#000020',
      '#000040':'#000040',
      '#000060':'#000060',
      '#000080':'Navy',
      '#0000A0':'#0000A0',
      '#0000C0':'#0000C0',
      '#0000E0':'#0000E0',
      '#0000FF':'Blue',

      '#200020':'#200020',
      '#400040':'#400040',
      '#600060':'#600060',
      '#800080':'Purple',
      '#A000A0':'#A000A0',
      '#C000C0':'#C000C0',
      '#E000E0':'#E000E0',
      '#FF00FF':'Fuchsia',

      '#202000':'#202000',
      '#404000':'#404000',
      '#606000':'#606000',
      '#808000':'Olive',
      '#A0A000':'#A0A000',
      '#C0C000':'#C0C000',
      '#E0E000':'#E0E000',
      '#FFFF00':'Yellow',

      '#002020':'#002020',
      '#004040':'#004040',
      '#006060':'#006060',
      '#008080':'Teal',
      '#00A0A0':'#00A0A0',
      '#00C0C0':'#00C0C0',
      '#00E0E0':'#00E0E0',
      '#00FFFF':'Aqua',

      'black':'Black',
      'gold':'Gold',
      'pink':'Pink',
      'orange':'Orange',
      'tomato':'Tomato',
      'brown':'Brown',
      'deepskyblue':'Deep Sky Blue',
      'royalblue':'Royal Blue'
    };

    customElements.whenDefined('sl-color-picker').then(() => {
      mycolorpicker.swatches = Object.keys(swatch_names);
      mycolorpicker.updateComplete.then(() => {
        var swatches = mycolorpicker.shadowRoot.querySelectorAll('[part~="swatch"]');
        swatches.forEach(swatch => {
          var parent = swatch.parentNode;
          var tooltip = document.createElement('sl-tooltip');
          tooltip.content = swatch_names[swatch.ariaLabel] || swatch.ariaLabel;
          parent.replaceChild(tooltip, swatch);
          tooltip.appendChild(swatch);
        })
      })
    });
  end;


  // Link Color Picker to Delphi function
  asm
    mycolorpicker.addEventListener("sl-change", event => {
    console.log('change');
      this.MyColorPickerChanged(event.target.getFormattedValue('hexa'));
    });
  end;

end;

end.