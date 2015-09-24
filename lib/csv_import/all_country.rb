module CsvImport
	module AllCountry
		
		attr_reader :all_countries, :all_countries_code

		def country_list
			# TODO Have to find the solution for the country list
			@all_countries_name << ["andorra", "united arab emirates", "afghanistan", "antigua and barbuda", "anguilla", 
								   "albania", "armenia", "netherlands antilles", "angola", "antarctica", "argentina", 
								   "american samoa", "austria", "australia", "aruba", "Åland islands", "azerbaijan", 
								   "bosnia and herzegovina", "barbados", "bangladesh", "belgium", "burkina faso", 
								   "bulgaria", "bahrain", "burundi", "benin", "saint barthélemy", "bermuda", "brunei darussalam",
								   "bolivia", "brazil", "bahamas", "bhutan", "bouvet island", "botswana", "belarus", "belize", 
								   "canada", "cocos (keeling) islands", "congo, the democratic republic of the", "central african republic",
								   "congo", "switzerland", "côte d'ivoire", "cook islands", "chile", "cameroon", "china", "colombia", 
								   "costa rica", "cuba", "cape verde", "christmas island", "cyprus", "czech republic", "germany", "djibouti",
								   "denmark", "dominica", "dominican republic", "algeria", "ecuador", "estonia", "egypt", "western sahara",
								   "eritrea", "spain", "ethiopia", "finland", "fiji", "falkland islands (malvinas)", "micronesia, federated states of", 
								   "faroe islands", "france", "gabon", "united kingdom", "grenada", "georgia", "french guiana", "guernsey", "ghana",
								   "gibraltar", "greenland", "gambia", "guinea", "guadeloupe", "equatorial guinea", "greece", "south georgia and the south sandwich islands", 
								   "guatemala", "guam", "guinea-bissau", "guyana", "hong kong", "heard and mcdonald islands", "honduras", "croatia",
								   "haiti", "hungary", "indonesia", "ireland", "israel", "isle of man", "india", "british indian ocean territory", 
								   "iraq", "iran, islamic republic of", "iceland", "italy", "jersey", "jamaica", "jordan", "japan", "kenya", "kyrgyzstan", 
								   "cambodia", "kiribati", "comoros", "saint kitts and nevis", "korea, democratic people's republic of", "korea, republic of", 
								   "kuwait", "cayman islands", "kazakhstan", "lao people's democratic republic", "lebanon", "saint lucia", 
								   "liechtenstein", "sri lanka", "liberia", "lesotho", "lithuania", "luxembourg", "latvia", "libya", "morocco", "monaco", 
								   "moldova, republic of", "montenegro", "saint martin", "madagascar", "marshall islands", "macedonia, the former yugoslav republic of",
								   "mali", "myanmar", "mongolia", "macao", "northern mariana islands", "martinique", "mauritania", "montserrat", "malta",
								   "mauritius", "maldives", "malawi", "mexico", "malaysia", "mozambique", "namibia", "new caledonia", "niger", "norfolk island", 
								   "nigeria", "nicaragua", "netherlands", "norway", "nepal", "nauru", "niue", "new zealand", "oman", "panama", "peru", 
								   "french polynesia", "papua new guinea", "philippines", "pakistan", "poland", "saint pierre and miquelon", "pitcairn", 
								   "puerto rico", "palestinian territory, occupied", "portugal", "palau", "paraguay", "qatar", "réunion", "romania",
								   "serbia", "russian federation", "rwanda", "saudi arabia", "solomon islands", "seychelles", "sudan", "sweden", "singapore",
								   "saint helena", "slovenia", "svalbard and jan mayen", "slovakia", "sierra leone", "san marino", "senegal", "somalia", 
								   "suriname", "south sudan", "sao tome and principe", "el salvador", "syrian arab republic", "swaziland", "turks and caicos islands",
								   "chad", "french southern territories", "togo", "thailand", "tajikistan", "tokelau", "timor-leste", "turkmenistan",
								   "tunisia", "tonga", "turkey", "trinidad and tobago", "tuvalu", "taiwan, republic of china", "tanzania, united republic of", 
								   "ukraine", "uganda", "united states minor outlying islands", "united states", "uruguay", "uzbekistan", "holy see (vatican city state)", 
								   "saint vincent and the grenedines", "venezuela, bolivarian republic of", "virgin islands, british", "virgin islands, u.s.", "viet nam",
								   "vanuatu", "wallis and futuna", "samoa", "yemen", "mayotte", "south africa", "zambia", "zimbabwe"]
            @all_countries_code << ["AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", 
            	                   "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", 
            	                   "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", 
            	                   "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", 
            	                   "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG",
            	                   "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN",
            	                   "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", 
            	                   "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI",
            	                   "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML",
            	                   "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC",
            	                   "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH",
            	                   "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA",
            	                   "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST",
            	                   "SV", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT",
            	                   "TV", "TW", "TZ", "UA", "UG", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", 
            	                   "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]
		end
	end
end