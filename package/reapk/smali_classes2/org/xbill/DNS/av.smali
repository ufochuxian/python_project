.class final Lorg/xbill/DNS/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bd58d9f278bf4bL


# instance fields
.field private a:Ljava/util/TreeSet;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/at;)V
    .locals 4
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/xbill/DNS/av;-><init>()V

    .line 66
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v0

    .line 67
    .local v0, "t":Lorg/xbill/DNS/at$a;
    invoke-virtual {v0}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V

    .line 76
    return-void

    .line 69
    :cond_0
    iget-object v2, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "typecode":I
    if-gez v1, :cond_1

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 73
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-static {v1}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xbill/DNS/h;)V
    .locals 9
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/xbill/DNS/av;-><init>()V

    .line 37
    const/4 v3, -0x1

    .line 38
    .local v3, "lastbase":I
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->b()I

    move-result v7

    if-lez v7, :cond_7

    .line 39
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->b()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 40
    new-instance v7, Lorg/xbill/DNS/WireParseException;

    const-string v8, "invalid bitmap descriptor"

    invoke-direct {v7, v8}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 42
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v4

    .line 43
    .local v4, "mapbase":I
    if-ge v4, v3, :cond_2

    .line 44
    new-instance v7, Lorg/xbill/DNS/WireParseException;

    const-string v8, "invalid ordering"

    invoke-direct {v7, v8}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 45
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v5

    .line 46
    .local v5, "maplength":I
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->b()I

    move-result v7

    if-le v5, v7, :cond_3

    .line 47
    new-instance v7, Lorg/xbill/DNS/WireParseException;

    const-string v8, "invalid bitmap"

    invoke-direct {v7, v8}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 49
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    .line 50
    .local v0, "current":I
    if-nez v0, :cond_5

    .line 48
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_5
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v2, v7, :cond_4

    .line 53
    const/4 v7, 0x1

    rsub-int/lit8 v8, v2, 0x7

    shl-int/2addr v7, v8

    and-int/2addr v7, v0

    if-nez v7, :cond_6

    .line 52
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_6
    mul-int/lit16 v7, v4, 0x100

    mul-int/lit8 v8, v1, 0x8

    add-int/2addr v7, v8

    add-int v6, v7, v2

    .line 56
    .local v6, "typecode":I
    iget-object v7, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-static {v6}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    .end local v0    # "current":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "mapbase":I
    .end local v5    # "maplength":I
    .end local v6    # "typecode":I
    :cond_7
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4
    .param p1, "array"    # [I

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/xbill/DNS/av;-><init>()V

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget v1, p1, v0

    invoke-static {v1}, Lorg/xbill/DNS/au;->a(I)V

    .line 30
    iget-object v1, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method private static a(Lorg/xbill/DNS/i;Ljava/util/TreeSet;I)V
    .locals 10
    .param p0, "out"    # Lorg/xbill/DNS/i;
    .param p1, "map"    # Ljava/util/TreeSet;
    .param p2, "mapbase"    # I

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v2, v6, 0xff

    .line 102
    .local v2, "arraymax":I
    div-int/lit8 v6, v2, 0x8

    add-int/lit8 v1, v6, 0x1

    .line 103
    .local v1, "arraylength":I
    new-array v0, v1, [I

    .line 104
    .local v0, "array":[I
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/i;->b(I)V

    .line 105
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/i;->b(I)V

    .line 106
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 108
    .local v5, "typecode":I
    and-int/lit16 v6, v5, 0xff

    div-int/lit8 v6, v6, 0x8

    aget v7, v0, v6

    const/4 v8, 0x1

    rem-int/lit8 v9, v5, 0x8

    rsub-int/lit8 v9, v9, 0x7

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v0, v6

    goto :goto_0

    .line 110
    .end local v5    # "typecode":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 111
    aget v6, v0, v4

    invoke-virtual {p0, v6}, Lorg/xbill/DNS/i;->b(I)V

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2
    .param p1, "typecode"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-static {p1}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toArray()[I
    .locals 5

    .prologue
    .line 80
    iget-object v4, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 81
    .local v0, "array":[I
    const/4 v2, 0x0

    .line 82
    .local v2, "n":I
    iget-object v4, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .line 84
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    .local v2, "t":I
    invoke-static {v2}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 96
    .end local v2    # "t":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toWire(Lorg/xbill/DNS/i;)V
    .locals 6
    .param p1, "out"    # Lorg/xbill/DNS/i;

    .prologue
    .line 116
    iget-object v5, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 135
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v3, -0x1

    .line 120
    .local v3, "mapbase":I
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 122
    .local v2, "map":Ljava/util/TreeSet;
    iget-object v5, p0, Lorg/xbill/DNS/av;->a:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 124
    .local v4, "t":I
    shr-int/lit8 v0, v4, 0x8

    .line 125
    .local v0, "base":I
    if-eq v0, v3, :cond_2

    .line 126
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 127
    invoke-static {p1, v2, v3}, Lorg/xbill/DNS/av;->a(Lorg/xbill/DNS/i;Ljava/util/TreeSet;I)V

    .line 128
    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    .line 130
    :cond_1
    move v3, v0

    .line 132
    :cond_2
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v0    # "base":I
    .end local v4    # "t":I
    :cond_3
    invoke-static {p1, v2, v3}, Lorg/xbill/DNS/av;->a(Lorg/xbill/DNS/i;Ljava/util/TreeSet;I)V

    goto :goto_0
.end method
