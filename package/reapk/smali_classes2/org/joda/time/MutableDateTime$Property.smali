.class public final Lorg/joda/time/MutableDateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/MutableDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3e3028d97dec5739L


# instance fields
.field private iField:Lorg/joda/time/c;

.field private iInstant:Lorg/joda/time/MutableDateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/c;)V
    .locals 0

    .prologue
    .line 1270
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1271
    iput-object p1, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    .line 1272
    iput-object p2, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/c;

    .line 1273
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutableDateTime;

    iput-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    .line 1288
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 1289
    iget-object v1, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v1}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/c;

    .line 1290
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1280
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1281
    return-void
.end method


# virtual methods
.method public add(I)Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1339
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/c;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1340
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public add(J)Lorg/joda/time/MutableDateTime;
    .locals 5

    .prologue
    .line 1351
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/c;->add(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1352
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public addWrapField(I)Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1363
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/c;->addWrapField(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1364
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/c;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/c;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMutableDateTime()Lorg/joda/time/MutableDateTime;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundCeiling()Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1426
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1427
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundFloor()Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1415
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1416
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundHalfCeiling()Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1450
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundHalfCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1451
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundHalfEven()Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1462
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundHalfEven(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1463
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundHalfFloor()Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1438
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->roundHalfFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1439
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public set(I)Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1376
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/c;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1377
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public set(Ljava/lang/String;)Lorg/joda/time/MutableDateTime;
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutableDateTime$Property;->set(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MutableDateTime;

    .line 1404
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MutableDateTime;
    .locals 4

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/c;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1391
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method
