defmodule Faker.Address do
  import Faker, only: [sampler: 2, random: 1]

  @moduledoc """
  Functions for generating addresses.
  """

  @doc """
  Return random building number.
  """
  @spec building_number() :: String.t
  def building_number do
    %{0 => "#####", 1 => "####", 2 => "###", 3 => "##", 4 => "#"}
    |> Map.get(random(5))
    |> Faker.format
  end

  @doc """
  Return city name.
  """
  @spec city() :: String.t
  def city do
    city(random(4))
  end

  defp city(0), do: "#{city_prefix} #{Faker.Name.first_name}#{city_suffix}"
  defp city(1), do: "#{city_prefix} #{Faker.Name.first_name}"
  defp city(2), do: "#{Faker.Name.first_name}#{city_suffix}"
  defp city(3), do: "#{Faker.Name.last_name}#{city_suffix}"

  @doc """
  Return city prefix.
  """
  @spec city_prefix() :: String.t
  sampler :city_prefix, ["North", "East", "West", "South", "New", "Lake", "Port"]

  @doc """
  Return city suffix.
  """
  @spec city_suffix() :: String.t
  sampler :city_suffix, ["town", "ton", "land", "ville", "berg", "burgh", "borough", "bury", "view", "port", "mouth", "stad", "furt", "chester", "mouth", "fort", "haven", "side", "shire"]

  @doc """
  Return country.
  """
  @spec country() :: String.t
  sampler :country, ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica (the territory South of 60 deg S)", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Bouvet Island (Bouvetoya)", "Brazil", "British Indian Ocean Territory (Chagos Archipelago)", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Congo", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Faroe Islands", "Falkland Islands (Malvinas)", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Island and McDonald Islands", "Holy See (Vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy", "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Democratic People's Republic of Korea", "Republic of Korea", "Kuwait", "Kyrgyz Republic", "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macao", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands Antilles", "Netherlands", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Palestinian Territory", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn Islands", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Barthelemy", "Saint Helena", "Saint Kitts and Nevis", "Saint Lucia", "Saint Martin", "Saint Pierre and Miquelon", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia (Slovak Republic)", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard & Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Timor-Leste", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States of America", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "'Virgin Islands", "British'", "'Virgin Islands", "U.S.'", "Wallis and Futuna", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"]

  @doc """
  Return country code.
  """
  @spec country_code() :: String.t
  sampler :country_code, ["AD", "AE", "AF", "AG", "AI", "AL", "AM", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]

  @doc """
  Return random latitude.
  """
  @spec latitude() :: float
  def latitude do
    :random.seed(:os.timestamp)
    ((:random.uniform * 180) - 90)
  end

  @doc """
  Return random longitude.
  """
  @spec longitude() :: float
  def longitude do
    :random.seed(:os.timestamp)
    ((:random.uniform * 360) - 180)
  end

  @doc """
  Return random postcode.
  """
  @spec postcode() :: String.t
  defdelegate postcode, to: __MODULE__, as: :zip_code

  @doc """
  Return random secondary address.
  """
  @spec secondary_address() :: String.t
  def secondary_address do
    %{0 => "Apt. ###", 1 => "Suite ###"}
    |> Map.get(random(2))
    |> Faker.format
  end

  @doc """
  Return state.
  """
  @spec state() :: String.t
  sampler :state, ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

  @doc """
  Return state abbr.
  """
  @spec state_abbr() :: String.t
  sampler :state_abbr, ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]

  @doc """
  Return street address.
  """
  @spec street_address() :: String.t
  def street_address do
    "#{building_number} #{street_name}"
  end

  @doc """
  Return `street_address/0` or if argument is `true` adds `secondary_address/0`.
  """
  @spec street_address(true | any) :: String.t
  def street_address(true), do: street_address <> " " <> secondary_address
  def street_address(_), do: street_address

  @doc """
  Return street name.
  """
  @spec street_name() :: String.t
  def street_name do
    street_name(random(2))
  end

  defp street_name(0), do: "#{Faker.Name.first_name} #{street_suffix}"
  defp street_name(1), do: "#{Faker.Name.last_name} #{street_suffix}"

  @doc """
  Return street suffix.
  """
  @spec street_suffix() :: String.t
  sampler :street_suffix, ["Alley", "Avenue", "Branch", "Bridge", "Brook", "Brooks", "Burg", "Burgs", "Bypass", "Camp", "Canyon", "Cape", "Causeway", "Center", "Centers", "Circle", "Circles", "Cliff", "Cliffs", "Club", "Common", "Corner", "Corners", "Course", "Court", "Courts", "Cove", "Coves", "Creek", "Crescent", "Crest", "Crossing", "Crossroad", "Curve", "Dale", "Dam", "Divide", "Drive", "Drive", "Drives", "Estate", "Estates", "Expressway", "Extension", "Extensions", "Fall", "Falls", "Ferry", "Field", "Fields", "Flat", "Flats", "Ford", "Fords", "Forest", "Forge", "Forges", "Fork", "Forks", "Fort", "Freeway", "Garden", "Gardens", "Gateway", "Glen", "Glens", "Green", "Greens", "Grove", "Groves", "Harbor", "Harbors", "Haven", "Heights", "Highway", "Hill", "Hills", "Hollow", "Inlet", "Inlet", "Island", "Island", "Islands", "Islands", "Isle", "Isle", "Junction", "Junctions", "Key", "Keys", "Knoll", "Knolls", "Lake", "Lakes", "Land", "Landing", "Lane", "Light", "Lights", "Loaf", "Lock", "Locks", "Locks", "Lodge", "Lodge", "Loop", "Mall", "Manor", "Manors", "Meadow", "Meadows", "Mews", "Mill", "Mills", "Mission", "Mission", "Motorway", "Mount", "Mountain", "Mountain", "Mountains", "Mountains", "Neck", "Orchard", "Oval", "Overpass", "Park", "Parks", "Parkway", "Parkways", "Pass", "Passage", "Path", "Pike", "Pine", "Pines", "Place", "Plain", "Plains", "Plains", "Plaza", "Plaza", "Point", "Points", "Port", "Port", "Ports", "Ports", "Prairie", "Prairie", "Radial", "Ramp", "Ranch", "Rapid", "Rapids", "Rest", "Ridge", "Ridges", "River", "Road", "Road", "Roads", "Roads", "Route", "Row", "Rue", "Run", "Shoal", "Shoals", "Shore", "Shores", "Skyway", "Spring", "Springs", "Springs", "Spur", "Spurs", "Square", "Square", "Squares", "Squares", "Station", "Station", "Stravenue", "Stravenue", "Stream", "Stream", "Street", "Street", "Streets", "Summit", "Summit", "Terrace", "Throughway", "Trace", "Track", "Trafficway", "Trail", "Trail", "Tunnel", "Tunnel", "Turnpike", "Turnpike", "Underpass", "Union", "Unions", "Valley", "Valleys", "Via", "Viaduct", "View", "Views", "Village", "Village", "Villages", "Ville", "Vista", "Vista", "Walk", "Walks", "Wall", "Way", "Ways", "Well", "Wells"]

  @doc """
  Return time zone.
  """
  @spec time_zone() :: String.t
  sampler :time_zone, ["Pacific/Midway", "Pacific/Pago_Pago", "Pacific/Honolulu", "America/Juneau", "America/Los_Angeles", "America/Tijuana", "America/Denver", "America/Phoenix", "America/Chihuahua", "America/Mazatlan", "America/Chicago", "America/Regina", "America/Mexico_City", "America/Mexico_City", "America/Monterrey", "America/Guatemala", "America/New_York", "America/Indiana/Indianapolis", "America/Bogota", "America/Lima", "America/Lima", "America/Halifax", "America/Caracas", "America/La_Paz", "America/Santiago", "America/St_Johns", "America/Sao_Paulo", "America/Argentina/Buenos_Aires", "America/Guyana", "America/Godthab", "Atlantic/South_Georgia", "Atlantic/Azores", "Atlantic/Cape_Verde", "Europe/Dublin", "Europe/London", "Europe/Lisbon", "Europe/London", "Africa/Casablanca", "Africa/Monrovia", "Etc/UTC", "Europe/Belgrade", "Europe/Bratislava", "Europe/Budapest", "Europe/Ljubljana", "Europe/Prague", "Europe/Sarajevo", "Europe/Skopje", "Europe/Warsaw", "Europe/Zagreb", "Europe/Brussels", "Europe/Copenhagen", "Europe/Madrid", "Europe/Paris", "Europe/Amsterdam", "Europe/Berlin", "Europe/Berlin", "Europe/Rome", "Europe/Stockholm", "Europe/Vienna", "Africa/Algiers", "Europe/Bucharest", "Africa/Cairo", "Europe/Helsinki", "Europe/Kiev", "Europe/Riga", "Europe/Sofia", "Europe/Tallinn", "Europe/Vilnius", "Europe/Athens", "Europe/Istanbul", "Europe/Minsk", "Asia/Jerusalem", "Africa/Harare", "Africa/Johannesburg", "Europe/Moscow", "Europe/Moscow", "Europe/Moscow", "Asia/Kuwait", "Asia/Riyadh", "Africa/Nairobi", "Asia/Baghdad", "Asia/Tehran", "Asia/Muscat", "Asia/Muscat", "Asia/Baku", "Asia/Tbilisi", "Asia/Yerevan", "Asia/Kabul", "Asia/Yekaterinburg", "Asia/Karachi", "Asia/Karachi", "Asia/Tashkent", "Asia/Kolkata", "Asia/Kolkata", "Asia/Kolkata", "Asia/Kolkata", "Asia/Kathmandu", "Asia/Dhaka", "Asia/Dhaka", "Asia/Colombo", "Asia/Almaty", "Asia/Novosibirsk", "Asia/Rangoon", "Asia/Bangkok", "Asia/Bangkok", "Asia/Jakarta", "Asia/Krasnoyarsk", "Asia/Shanghai", "Asia/Chongqing", "Asia/Hong_Kong", "Asia/Urumqi", "Asia/Kuala_Lumpur", "Asia/Singapore", "Asia/Taipei", "Australia/Perth", "Asia/Irkutsk", "Asia/Ulaanbaatar", "Asia/Seoul", "Asia/Tokyo", "Asia/Tokyo", "Asia/Tokyo", "Asia/Yakutsk", "Australia/Darwin", "Australia/Adelaide", "Australia/Melbourne", "Australia/Melbourne", "Australia/Sydney", "Australia/Brisbane", "Australia/Hobart", "Asia/Vladivostok", "Pacific/Guam", "Pacific/Port_Moresby", "Asia/Magadan", "Asia/Magadan", "Pacific/Noumea", "Pacific/Fiji", "Asia/Kamchatka", "Pacific/Majuro", "Pacific/Auckland", "Pacific/Auckland", "Pacific/Tongatapu", "Pacific/Fakaofo", "Pacific/Apia"]

  @doc """
  Return random postcode.
  """
  @spec zip() :: String.t
  defdelegate zip, to: __MODULE__, as: :zip_code

  @doc """
  Return random postcode.
  """
  @spec zip_code() :: String.t
  def zip_code do
    %{0 => "#####", 1 => "#####-####"}
    |> Map.get(random(2))
    |> Faker.format
  end
end
