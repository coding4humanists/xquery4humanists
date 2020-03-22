xquery version "3.1";

let $person :=
    <person xml:id="alcuin_of_york">
        <persName>Alcuin of York</persName>
        <residence>
            <placeName>
                <place>Northumbria</place>
            </placeName>
        </residence>
        <birth when="0735">c. 735</birth>
        <death when="0804-05-19"/>
    </person>
return
    $person transform with 
        { insert node attribute sex { "M" } into . }