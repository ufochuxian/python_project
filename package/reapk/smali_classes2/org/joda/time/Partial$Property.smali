.class public Lorg/joda/time/Partial$Property;
.super Lorg/joda/time/field/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/Partial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074d5e4b020L


# instance fields
.field private final iFieldIndex:I

.field private final iPartial:Lorg/joda/time/Partial;


# direct methods
.method constructor <init>(Lorg/joda/time/Partial;I)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0}, Lorg/joda/time/field/a;-><init>()V

    .line 833
    iput-object p1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    .line 834
    iput p2, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    .line 835
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .prologue
    .line 892
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 893
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/c;->add(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 894
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .prologue
    .line 916
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 917
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/c;->addWrapField(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 918
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public get()I
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v1, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/Partial;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/c;
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v1, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method

.method public getPartial()Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/n;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .prologue
    .line 933
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 934
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/c;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[II)[I

    move-result-object v0

    .line 935
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Partial$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/Partial;
    .locals 6

    .prologue
    .line 950
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v3

    .line 951
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/c;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v2, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/c;->set(Lorg/joda/time/n;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object v0

    .line 952
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public withMaximumValue()Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 980
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Partial$Property;->setCopy(I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Partial$Property;->setCopy(I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method
