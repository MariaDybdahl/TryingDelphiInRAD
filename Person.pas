unit Person;

interface

type
  TPerson = class
  private
    FFirstName: string;
    FLastName: string;
    FGender: string;
    FEmail: string;
    FCountry: string;
    FPhone:  string;
  public
    constructor Create; overload;
    constructor Create(const AFirst, ALast: string; AGender: string; AEmail: string; ACountry: string; APhone: string); overload;
    function FullName: string;
    property FirstName: string read FFirstName write FFirstName;
    property LastName: string read FLastName write FLastName;
    property Gender: string read FGender write FGender;
    property Country: string read FCountry write FCountry;
    property Phone: string read FPhone write FPhone;
    property Email: string read FEmail write FEmail;
  end;

implementation

{ TPerson }

constructor TPerson.Create;
begin
  inherited;
end;

constructor TPerson.Create(const AFirst, ALast: string; AGender: string; AEmail: string;  ACountry: string; APhone: string);
begin
  FFirstName := AFirst;
  FLastName := ALast;
  FGender := AGender;
  FEmail:= AEmail;
  FCountry := ACountry;
  FPhone := APhone;
end;


function TPerson.FullName: string;
begin
  Result := FFirstName + ' ' + FLastName;
end;

end.

