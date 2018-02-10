.class public Ljavax/jmdns/impl/b$a;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static b:Ljava/util/logging/Logger;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ljavax/jmdns/impl/b$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/b$a;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/b$a;-><init>([BII)V

    .line 42
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/b$a;->a:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->read()I

    move-result v0

    return v0
.end method

.method public a(I)[B
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 71
    new-array v0, p1, [B

    .line 72
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljavax/jmdns/impl/b$a;->read([BII)I

    .line 73
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 5
    .param p1, "len"    # I

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 79
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v1

    .line 80
    .local v1, "ch":I
    shr-int/lit8 v3, v1, 0x4

    packed-switch v3, :pswitch_data_0

    .line 105
    :pswitch_0
    and-int/lit8 v3, v1, 0x3f

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int v1, v3, v4

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 109
    :goto_1
    :pswitch_1
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :pswitch_2
    and-int/lit8 v3, v1, 0x1f

    shl-int/lit8 v3, v3, 0x6

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v1, v3, v4

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_1

    .line 99
    :pswitch_3
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0xc

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v1, v3, v4

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_1

    .line 111
    .end local v1    # "ch":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c()I
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized e()I
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/jmdns/impl/b$a;->pos:I

    iget v1, p0, Ljavax/jmdns/impl/b$a;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/b$a;->buf:[B

    iget v1, p0, Ljavax/jmdns/impl/b$a;->pos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 12

    .prologue
    .line 119
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v6, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/StringBuilder;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 122
    .local v2, "finished":Z
    :goto_0
    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v5

    .line 124
    .local v5, "len":I
    if-nez v5, :cond_1

    .line 125
    const/4 v2, 0x1

    .line 160
    .end local v5    # "len":I
    :cond_0
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 161
    .local v3, "index":Ljava/lang/Integer;
    iget-object v11, p0, Ljavax/jmdns/impl/b$a;->a:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    .end local v3    # "index":Ljava/lang/Integer;
    .restart local v5    # "len":I
    :cond_1
    sget-object v9, Ljavax/jmdns/impl/b$1;->a:[I

    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSLabel;->labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 157
    sget-object v9, Ljavax/jmdns/impl/b$a;->b:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported dns label type: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    and-int/lit16 v11, v5, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_0
    iget v9, p0, Ljavax/jmdns/impl/b$a;->pos:I

    add-int/lit8 v7, v9, -0x1

    .line 131
    .local v7, "offset":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/b$a;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    .line 134
    .local v8, "previousLabel":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    .end local v8    # "previousLabel":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    .end local v4    # "label":Ljava/lang/String;
    .end local v7    # "offset":I
    :pswitch_1
    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSLabel;->labelValue(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v10

    or-int v3, v9, v10

    .line 140
    .local v3, "index":I
    iget-object v9, p0, Ljavax/jmdns/impl/b$a;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "compressedLabel":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 142
    sget-object v9, Ljavax/jmdns/impl/b$a;->b:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad domain name: possible circular name detected. Bad offset: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljavax/jmdns/impl/b$a;->pos:I

    add-int/lit8 v11, v11, -0x2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 143
    const-string v1, ""

    .line 145
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    .line 147
    .restart local v8    # "previousLabel":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 149
    .end local v8    # "previousLabel":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v2, 0x1

    .line 150
    goto/16 :goto_0

    .line 153
    .end local v1    # "compressedLabel":Ljava/lang/String;
    .end local v3    # "index":I
    :pswitch_2
    sget-object v9, Ljavax/jmdns/impl/b$a;->b:Ljava/util/logging/Logger;

    const-string v10, "Extended label are not currently supported."

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v5    # "len":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Ljavax/jmdns/impl/b$a;->b()I

    move-result v0

    .line 168
    .local v0, "len":I
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/b$a;->b(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
