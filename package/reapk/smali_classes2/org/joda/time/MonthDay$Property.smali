.class public Lorg/joda/time/MonthDay$Property;
.super Lorg/joda/time/field/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/MonthDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f7cffbcbc856febL


# instance fields
.field private final iBase:Lorg/joda/time/MonthDay;

.field private final iFieldIndex:I


# direct methods
.method constructor <init>(Lorg/joda/time/MonthDay;I)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lorg/joda/time/field/a;-><init>()V

    .line 840
    iput-object p1, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    .line 841
    iput p2, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    .line 842
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/MonthDay;
    .locals 4

    .prologue
    .line 896
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 897
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/c;->add(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 898
    new-instance v1, Lorg/joda/time/MonthDay;

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v1
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/MonthDay;
    .locals 4

    .prologue
    .line 920
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 921
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/c;->addWrapField(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 922
    new-instance v1, Lorg/joda/time/MonthDay;

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v1
.end method

.method public get()I
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v1, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/c;
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v1, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method

.method public getMonthDay()Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/n;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/MonthDay;
    .locals 4

    .prologue
    .line 937
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 938
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 939
    new-instance v1, Lorg/joda/time/MonthDay;

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v1
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/MonthDay;
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MonthDay$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MonthDay;
    .locals 6

    .prologue
    .line 954
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v3

    .line 955
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/c;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v2, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object v0

    .line 956
    new-instance v1, Lorg/joda/time/MonthDay;

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v1
.end method
