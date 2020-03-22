xquery version "3.1";

let $person :=
    <person xml:id="alcuin_of_york">
        <persName>Alcuin of York</persName>
        <residence>
            <placeName>
                <place>Northumbria</place>
            </placeName>
        </residence>
        <birth when="735">c. 735</birth>
        <death when="0804-05-19"/>
    </person>
return
    $person transform with
        {
            insert node attribute sex { "M" } into .,
            delete node birth/@when,
            insert node attribute notAfter { "0736" } into birth,
            insert node attribute notBefore { "0734" } into birth,
            rename node residence/placeName/place as "region",
            replace value of node residence/placeName/place with "Kingdom of Northumbria"
        }