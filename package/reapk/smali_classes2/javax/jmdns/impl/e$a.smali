.class public Ljavax/jmdns/impl/e$a;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljavax/jmdns/impl/e;

.field private final b:I


# direct methods
.method constructor <init>(ILjavax/jmdns/impl/e;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "out"    # Ljavax/jmdns/impl/e;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;I)V

    .line 38
    return-void
.end method

.method constructor <init>(ILjavax/jmdns/impl/e;I)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "out"    # Ljavax/jmdns/impl/e;
    .param p3, "offset"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 42
    iput-object p2, p0, Ljavax/jmdns/impl/e$a;->a:Ljavax/jmdns/impl/e;

    .line 43
    iput p3, p0, Ljavax/jmdns/impl/e$a;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 47
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->write(I)V

    .line 48
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/jmdns/impl/e$a;->a(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method a(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 52
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCompression"    # Z

    .prologue
    const/4 v8, 0x0

    .line 118
    move-object v0, p1

    .line 120
    .local v0, "aName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 121
    .local v2, "n":I
    if-gez v2, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 124
    :cond_1
    if-gtz v2, :cond_2

    .line 125
    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 135
    :goto_1
    return-void

    .line 128
    :cond_2
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "label":Ljava/lang/String;
    if-eqz p2, :cond_4

    sget-boolean v5, Ljavax/jmdns/impl/e;->a:Z

    if-eqz v5, :cond_4

    .line 130
    iget-object v5, p0, Ljavax/jmdns/impl/e$a;->a:Ljavax/jmdns/impl/e;

    iget-object v5, v5, Ljavax/jmdns/impl/e;->i:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 131
    .local v3, "offset":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 133
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 134
    and-int/lit16 v5, v4, 0xff

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/e$a;->a(I)V

    goto :goto_1

    .line 137
    .end local v4    # "val":I
    :cond_3
    iget-object v5, p0, Ljavax/jmdns/impl/e$a;->a:Ljavax/jmdns/impl/e;

    iget-object v5, v5, Ljavax/jmdns/impl/e;->i:Ljava/util/Map;

    invoke-virtual {p0}, Ljavax/jmdns/impl/e$a;->size()I

    move-result v6

    iget v7, p0, Ljavax/jmdns/impl/e$a;->b:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v8, v5}, Ljavax/jmdns/impl/e$a;->b(Ljava/lang/String;II)V

    .line 142
    .end local v3    # "offset":Ljava/lang/Integer;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v8, v5}, Ljavax/jmdns/impl/e$a;->b(Ljava/lang/String;II)V

    goto :goto_2
.end method

.method a(Ljavax/jmdns/impl/f;)V
    .locals 1
    .param p1, "question"    # Ljavax/jmdns/impl/f;

    .prologue
    .line 150
    invoke-virtual {p1}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljavax/jmdns/impl/f;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 152
    invoke-virtual {p1}, Ljavax/jmdns/impl/f;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 153
    return-void
.end method

.method a(Ljavax/jmdns/impl/g;J)V
    .locals 8
    .param p1, "rec"    # Ljavax/jmdns/impl/g;
    .param p2, "now"    # J

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/e$a;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 158
    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/e$a;->a:Ljavax/jmdns/impl/e;

    invoke-virtual {v2}, Ljavax/jmdns/impl/e;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    :goto_0
    or-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 159
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->r()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/e$a;->c(I)V

    .line 162
    new-instance v1, Ljavax/jmdns/impl/e$a;

    const/16 v2, 0x200

    iget-object v4, p0, Ljavax/jmdns/impl/e$a;->a:Ljavax/jmdns/impl/e;

    iget v5, p0, Ljavax/jmdns/impl/e$a;->b:I

    invoke-virtual {p0}, Ljavax/jmdns/impl/e$a;->size()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Ljavax/jmdns/impl/e$a;-><init>(ILjavax/jmdns/impl/e;I)V

    .line 163
    .local v1, "record":Ljavax/jmdns/impl/e$a;
    invoke-virtual {p1, v1}, Ljavax/jmdns/impl/g;->a(Ljavax/jmdns/impl/e$a;)V

    .line 164
    invoke-virtual {v1}, Ljavax/jmdns/impl/e$a;->toByteArray()[B

    move-result-object v0

    .line 166
    .local v0, "byteArray":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 167
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljavax/jmdns/impl/e$a;->write([BII)V

    .line 168
    return-void

    .end local v0    # "byteArray":[B
    .end local v1    # "record":Ljavax/jmdns/impl/e$a;
    :cond_0
    move v2, v3

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/g;->c(J)I

    move-result v2

    goto :goto_1
.end method

.method a([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/e$a;->a([BII)V

    .line 60
    :cond_0
    return-void
.end method

.method a([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 64
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 69
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 70
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 71
    return-void
.end method

.method b(Ljava/lang/String;II)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v6, 0x7ff

    const/16 v5, 0x7f

    const/4 v4, 0x1

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "utflen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 82
    add-int v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 83
    .local v0, "ch":I
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 81
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    if-le v0, v6, :cond_1

    .line 87
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 94
    .end local v0    # "ch":I
    :cond_2
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 96
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_5

    .line 97
    add-int v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .restart local v0    # "ch":I
    if-lt v0, v4, :cond_3

    if-gt v0, v5, :cond_3

    .line 99
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 96
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_3
    if-le v0, v6, :cond_4

    .line 102
    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 103
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 104
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/e$a;->a(I)V

    goto :goto_3

    .line 106
    :cond_4
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/e$a;->a(I)V

    .line 107
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/e$a;->a(I)V

    goto :goto_3

    .line 111
    .end local v0    # "ch":I
    :cond_5
    return-void
.end method

.method c(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 74
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 75
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 76
    return-void
.end method
