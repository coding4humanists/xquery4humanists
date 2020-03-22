xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare context item := document {
<div xmlns="http://www.tei-c.org/ns/1.0" type="document" xml:id="d194">
    <head>Memorandum of Conversation</head>
    <dateline>
        <placeName target="beijing">Peking</placeName>, <date from="1972-02-21T14:50:00" to="1972-02-21T15:55:00">February 21,
            1972, 2:50–3:55 p.m.</date>
    </dateline>
    <sp who="mao-zd">
        <speaker>Chairman Mao</speaker>: <p>Our common old friend, Generalissimo
                <name target="chiang-ks">Chiang Kai-shek</name>, doesn’t approve
            of this. He calls us Communist bandits.</p>
    </sp>
    <sp who="nixon-rm">
        <speaker>President Nixon</speaker>: <p><name target="chiang-ks">Chiang
                Kai-shek</name> calls the Chairman a bandit. What does the
            Chairman call Not for reproduction or distribution him?</p>
    </sp>
</div>
};

//tei:sp[ @who = "mao-zd" and tei:p/tei:name/@target = "chiang-ks" ]