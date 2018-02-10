.class public Ljavax/jmdns/impl/m;
.super Ljavax/jmdns/ServiceInfo;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;
.implements Ljavax/jmdns/impl/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/m$b;,
        Ljavax/jmdns/impl/m$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/logging/Logger;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private transient p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private final s:Ljavax/jmdns/impl/m$b;

.field private t:Ljavax/jmdns/impl/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Ljavax/jmdns/impl/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/m;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .param p8, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static/range {p1 .. p3}, Ljavax/jmdns/impl/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/4 v7, 0x0

    check-cast v7, [B

    move-object v1, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 129
    move-object/from16 v0, p8

    iput-object v0, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    .line 131
    const/4 v10, 0x0

    .line 133
    .local v10, "encodedText":[B
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v11, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 134
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v12, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 135
    .local v12, "out2":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p8

    invoke-static {v12, v0}, Ljavax/jmdns/impl/m;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 137
    .local v8, "data":[B
    array-length v1, v8

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 138
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v8    # "data":[B
    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "out2":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v9

    .line 144
    .local v9, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "data":[B
    .restart local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "out2":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_1
    array-length v1, v8

    int-to-byte v1, v1

    invoke-virtual {v11, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    const/4 v1, 0x0

    array-length v2, v8

    invoke-virtual {v11, v8, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 146
    if-eqz v10, :cond_1

    array-length v1, v10

    if-lez v1, :cond_1

    .end local v10    # "encodedText":[B
    :goto_0
    iput-object v10, p0, Ljavax/jmdns/impl/m;->l:[B

    .line 147
    return-void

    .line 146
    .restart local v10    # "encodedText":[B
    :cond_1
    sget-object v10, Ljavax/jmdns/impl/g;->b:[B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p8}, Ljavax/jmdns/impl/m;->c(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .param p8, "text"    # [B

    .prologue
    .line 176
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 177
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .locals 9
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/4 v6, 0x0

    check-cast v6, [B

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 185
    iput-object p6, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    .line 187
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v8, p6}, Ljavax/jmdns/impl/m;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/m;->l:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 190
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    .line 191
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .locals 7
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .local p6, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p6}, Ljavax/jmdns/impl/m;->c(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 181
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 2
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 196
    invoke-static {p1}, Ljavax/jmdns/impl/m;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 198
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/m;->c:Ljava/lang/String;

    .line 199
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/m;->d:Ljava/lang/String;

    .line 200
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/m;->e:Ljava/lang/String;

    .line 201
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/m;->f:Ljava/lang/String;

    .line 202
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/m;->g:Ljava/lang/String;

    .line 204
    iput p2, p0, Ljavax/jmdns/impl/m;->i:I

    .line 205
    iput p3, p0, Ljavax/jmdns/impl/m;->j:I

    .line 206
    iput p4, p0, Ljavax/jmdns/impl/m;->k:I

    .line 207
    iput-object p6, p0, Ljavax/jmdns/impl/m;->l:[B

    .line 208
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/m;->a(Z)V

    .line 209
    new-instance v1, Ljavax/jmdns/impl/m$b;

    invoke-direct {v1, p0}, Ljavax/jmdns/impl/m$b;-><init>(Ljavax/jmdns/impl/m;)V

    iput-object v1, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    .line 210
    iput-boolean p5, p0, Ljavax/jmdns/impl/m;->q:Z

    .line 211
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    .line 212
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    .line 213
    return-void
.end method

.method constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 7
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 221
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    .line 222
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    .line 223
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->A()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->c:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->B()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->d:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->C()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->e:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->f:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->D()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->g:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->q()I

    move-result v4

    iput v4, p0, Ljavax/jmdns/impl/m;->i:I

    .line 230
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->s()I

    move-result v4

    iput v4, p0, Ljavax/jmdns/impl/m;->j:I

    .line 231
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->r()I

    move-result v4

    iput v4, p0, Ljavax/jmdns/impl/m;->k:I

    .line 232
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->t()[B

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/m;->l:[B

    .line 233
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->z()Z

    move-result v4

    iput-boolean v4, p0, Ljavax/jmdns/impl/m;->q:Z

    .line 234
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->p()[Ljava/net/Inet6Address;

    move-result-object v2

    .line 235
    .local v2, "ipv6Addresses":[Ljava/net/Inet6Address;
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 236
    .local v0, "address":Ljava/net/Inet6Address;
    iget-object v6, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "address":Ljava/net/Inet6Address;
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->o()[Ljava/net/Inet4Address;

    move-result-object v1

    .line 239
    .local v1, "ipv4Addresses":[Ljava/net/Inet4Address;
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 240
    .local v0, "address":Ljava/net/Inet4Address;
    iget-object v5, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "address":Ljava/net/Inet4Address;
    .end local v1    # "ipv4Addresses":[Ljava/net/Inet4Address;
    .end local v2    # "ipv6Addresses":[Ljava/net/Inet6Address;
    :cond_1
    new-instance v3, Ljavax/jmdns/impl/m$b;

    invoke-direct {v3, p0}, Ljavax/jmdns/impl/m$b;-><init>(Ljavax/jmdns/impl/m;)V

    iput-object v3, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    .line 244
    return-void
.end method

.method private final K()Z
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p0}, Ljavax/jmdns/impl/m;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 249
    .local v0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {v0}, Ljavax/jmdns/impl/m;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 772
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 773
    .local v0, "c":I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    .line 774
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 771
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    :cond_0
    const/16 v3, 0x7ff

    if-le v0, v3, :cond_1

    .line 777
    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 778
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 779
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 781
    :cond_1
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 782
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 786
    .end local v0    # "c":I
    :cond_2
    return-void
.end method

.method protected static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    .local v1, "checkedQualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 333
    .local v2, "domain":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 334
    :cond_0
    const-string v2, "local"

    .line 336
    :cond_1
    invoke-static {v2}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 340
    .local v4, "protocol":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 341
    :cond_2
    const-string v4, "tcp"

    .line 343
    :cond_3
    invoke-static {v4}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    .line 347
    .local v0, "application":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 348
    :cond_4
    const-string v0, ""

    .line 350
    :cond_5
    invoke-static {v0}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 354
    .local v3, "instance":Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 355
    :cond_6
    const-string v3, ""

    .line 358
    :cond_7
    invoke-static {v3}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 362
    .local v5, "subtype":Ljava/lang/String;
    :goto_4
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    .line 363
    :cond_8
    const-string v5, ""

    .line 365
    :cond_9
    invoke-static {v5}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-object v1

    .line 332
    .end local v0    # "application":Ljava/lang/String;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "instance":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v5    # "subtype":Ljava/lang/String;
    :cond_a
    const-string v2, "local"

    goto/16 :goto_0

    .line 339
    .restart local v2    # "domain":Ljava/lang/String;
    :cond_b
    const-string v4, "tcp"

    goto/16 :goto_1

    .line 346
    .restart local v4    # "protocol":Ljava/lang/String;
    :cond_c
    const-string v0, ""

    goto :goto_2

    .line 353
    .restart local v0    # "application":Ljava/lang/String;
    :cond_d
    const-string v3, ""

    goto :goto_3

    .line 361
    .restart local v3    # "instance":Ljava/lang/String;
    :cond_e
    const-string v5, ""

    goto :goto_4
.end method

.method private static c(Ljava/util/Map;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .prologue
    .line 1267
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x0

    .line 1268
    .local v7, "text":[B
    if-eqz p0, :cond_7

    .line 1270
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x100

    invoke-direct {v5, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1271
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1272
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1273
    .local v8, "val":Ljava/lang/Object;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v6, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1274
    .local v6, "out2":Ljava/io/ByteArrayOutputStream;
    invoke-static {v6, v4}, Ljavax/jmdns/impl/m;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1275
    if-nez v8, :cond_0

    .line 1291
    .end local v8    # "val":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1292
    .local v2, "data":[B
    array-length v9, v2

    const/16 v11, 0xff

    if-le v9, v11, :cond_5

    .line 1293
    new-instance v10, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v8, :cond_4

    const-string v9, ""

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    .end local v2    # "data":[B
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "out2":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 1300
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1277
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "out2":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "val":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1278
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1279
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v6, v9}, Ljavax/jmdns/impl/m;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 1280
    :cond_1
    instance-of v9, v8, [B

    if-eqz v9, :cond_3

    .line 1281
    move-object v0, v8

    check-cast v0, [B

    move-object v9, v0

    move-object v0, v9

    check-cast v0, [B

    move-object v1, v0

    .line 1282
    .local v1, "bval":[B
    array-length v9, v1

    if-lez v9, :cond_2

    .line 1283
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1284
    const/4 v9, 0x0

    array-length v11, v1

    invoke-virtual {v6, v1, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1286
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1289
    .end local v1    # "bval":[B
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid property value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1293
    .end local v8    # "val":Ljava/lang/Object;
    .restart local v2    # "data":[B
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1295
    :cond_5
    array-length v9, v2

    int-to-byte v9, v9

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1296
    const/4 v9, 0x0

    array-length v11, v2

    invoke-virtual {v5, v2, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 1298
    .end local v2    # "data":[B
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "out2":Ljava/io/ByteArrayOutputStream;
    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 1303
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    if-eqz v7, :cond_8

    array-length v9, v7

    if-lez v9, :cond_8

    .end local v7    # "text":[B
    :goto_3
    return-object v7

    .restart local v7    # "text":[B
    :cond_8
    sget-object v7, Ljavax/jmdns/impl/g;->b:[B

    goto :goto_3
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v14, 0x2e

    const/4 v12, 0x0

    .line 258
    move-object v2, p0

    .line 260
    .local v2, "casePreservedType":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "aType":Ljava/lang/String;
    move-object v1, v0

    .line 262
    .local v1, "application":Ljava/lang/String;
    const-string v7, ""

    .line 263
    .local v7, "protocol":Ljava/lang/String;
    const-string v10, ""

    .line 264
    .local v10, "subtype":Ljava/lang/String;
    const-string v6, ""

    .line 265
    .local v6, "name":Ljava/lang/String;
    const-string v3, ""

    .line 267
    .local v3, "domain":Ljava/lang/String;
    const-string v11, "in-addr.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "ip6.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 268
    :cond_0
    const-string v11, "in-addr.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "in-addr.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 269
    .local v5, "index":I
    :goto_0
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 270
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    const-string v1, ""

    .line 318
    :cond_1
    :goto_1
    new-instance v8, Ljava/util/HashMap;

    const/4 v11, 0x5

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 319
    .local v8, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v3}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v1}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object v8

    .line 268
    .end local v5    # "index":I
    .end local v8    # "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    :cond_2
    const-string v11, "ip6.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 272
    :cond_3
    const-string v11, "_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 273
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 274
    .restart local v5    # "index":I
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    const-string v1, ""

    goto :goto_1

    .line 279
    .end local v5    # "index":I
    :cond_4
    const-string v11, "_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "_services"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 280
    :cond_5
    const-string v11, "._"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 281
    .restart local v5    # "index":I
    if-lez v5, :cond_6

    .line 283
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 284
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_6

    .line 285
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .end local v5    # "index":I
    :cond_6
    const-string v11, "._"

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 292
    .restart local v5    # "index":I
    if-lez v5, :cond_7

    .line 293
    add-int/lit8 v9, v5, 0x2

    .line 294
    .local v9, "start":I
    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 295
    .local v4, "end":I
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 297
    .end local v4    # "end":I
    .end local v9    # "start":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 298
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 299
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    add-int/lit8 v9, v11, 0x2

    .line 300
    .restart local v9    # "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_2
    sub-int v4, v13, v11

    .line 301
    .restart local v4    # "end":I
    if-le v4, v9, :cond_8

    .line 302
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 304
    :cond_8
    if-lez v5, :cond_b

    .line 305
    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    .end local v4    # "end":I
    .end local v9    # "start":I
    :cond_9
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v13, "._sub"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 311
    if-lez v5, :cond_1

    .line 312
    add-int/lit8 v9, v5, 0x5

    .line 313
    .restart local v9    # "start":I
    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 314
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    move v11, v12

    .line 300
    goto :goto_2

    .line 307
    .restart local v4    # "end":I
    :cond_b
    const-string v1, ""

    goto :goto_3
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 372
    if-nez p0, :cond_1

    .line 373
    const-string v0, ""

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "newName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_2
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Ljavax/jmdns/impl/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "local"

    goto :goto_0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Ljavax/jmdns/impl/m;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tcp"

    goto :goto_0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Ljavax/jmdns/impl/m;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Ljavax/jmdns/impl/m;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public E()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 759
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->A()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->C()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    return-object v0
.end method

.method public synthetic F()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->H()Ljavax/jmdns/impl/m;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized G()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 836
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;

    if-nez v8, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v8

    if-eqz v8, :cond_1

    .line 837
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    .local v6, "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    const/4 v4, 0x0

    .local v4, "off":I
    move v5, v4

    .line 840
    .end local v4    # "off":I
    .local v5, "off":I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v8

    array-length v8, v8

    if-ge v5, v8, :cond_7

    .line 842
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .restart local v4    # "off":I
    :try_start_2
    aget-byte v8, v8, v5

    and-int/lit16 v2, v8, 0xff

    .line 843
    .local v2, "len":I
    if-eqz v2, :cond_0

    add-int v8, v4, v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v9

    array-length v9, v9

    if-le v8, v9, :cond_2

    .line 844
    :cond_0
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    .end local v2    # "len":I
    :goto_1
    :try_start_3
    iput-object v6, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;

    .line 874
    .end local v4    # "off":I
    .end local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_1
    iget-object v8, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;

    if-eqz v8, :cond_6

    iget-object v8, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v8

    .line 848
    .restart local v2    # "len":I
    .restart local v4    # "off":I
    .restart local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_2
    const/4 v1, 0x0

    .line 849
    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v8

    add-int v9, v4, v1

    aget-byte v8, v8, v9

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 854
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v8

    invoke-virtual {p0, v8, v4, v1}, Ljavax/jmdns/impl/m;->a([BII)Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 856
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 868
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 870
    .local v0, "exception":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    sget-object v8, Ljavax/jmdns/impl/m;->b:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Malformed TXT Field "

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 836
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v4    # "off":I
    .end local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 859
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "off":I
    .restart local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_4
    if-ne v1, v2, :cond_5

    .line 860
    :try_start_6
    sget-object v8, Ljavax/jmdns/impl/m;->a:[B

    invoke-virtual {v6, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move v5, v4

    .line 867
    .end local v4    # "off":I
    .restart local v5    # "off":I
    goto :goto_0

    .line 862
    .end local v5    # "off":I
    .restart local v4    # "off":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    sub-int v8, v2, v1

    new-array v7, v8, [B

    .line 863
    .local v7, "value":[B
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v8

    add-int v9, v4, v1

    const/4 v10, 0x0

    sub-int v11, v2, v1

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    invoke-virtual {v6, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 865
    add-int/2addr v4, v2

    goto :goto_5

    .line 874
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "off":I
    .end local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    .end local v7    # "value":[B
    :cond_6
    :try_start_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 868
    .restart local v5    # "off":I
    .restart local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :catch_1
    move-exception v0

    move v4, v5

    .end local v5    # "off":I
    .restart local v4    # "off":I
    goto :goto_4

    .end local v4    # "off":I
    .restart local v5    # "off":I
    :cond_7
    move v4, v5

    .end local v5    # "off":I
    .restart local v4    # "off":I
    goto :goto_1
.end method

.method public H()Ljavax/jmdns/impl/m;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1155
    new-instance v0, Ljavax/jmdns/impl/m;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->E()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/m;->i:I

    iget v3, p0, Ljavax/jmdns/impl/m;->j:I

    iget v4, p0, Ljavax/jmdns/impl/m;->k:I

    iget-boolean v5, p0, Ljavax/jmdns/impl/m;->q:Z

    iget-object v6, p0, Ljavax/jmdns/impl/m;->l:[B

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 1156
    .local v0, "serviceInfo":Ljavax/jmdns/impl/m;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->p()[Ljava/net/Inet6Address;

    move-result-object v9

    .line 1157
    .local v9, "ipv6Addresses":[Ljava/net/Inet6Address;
    array-length v2, v9

    move v1, v10

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, v9, v1

    .line 1158
    .local v7, "address":Ljava/net/Inet6Address;
    iget-object v3, v0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v7    # "address":Ljava/net/Inet6Address;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->o()[Ljava/net/Inet4Address;

    move-result-object v8

    .line 1161
    .local v8, "ipv4Addresses":[Ljava/net/Inet4Address;
    array-length v2, v8

    move v1, v10

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v7, v8, v1

    .line 1162
    .local v7, "address":Ljava/net/Inet4Address;
    iget-object v3, v0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1164
    .end local v7    # "address":Ljava/net/Inet4Address;
    :cond_1
    return-object v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Ljavax/jmdns/impl/m;->r:Z

    return v0
.end method

.method J()Ljavax/jmdns/impl/m$a;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Ljavax/jmdns/impl/m;->t:Ljavax/jmdns/impl/m$a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/m;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "urls":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method a([BII)Ljava/lang/String;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 792
    move v3, p2

    .line 793
    .local v3, "offset":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 794
    .local v0, "buf":Ljava/lang/StringBuffer;
    add-int v2, v3, p3

    .local v2, "end":I
    move v4, v3

    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 795
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v6, p1, v4

    and-int/lit16 v1, v6, 0xff

    .line 796
    .local v1, "ch":I
    shr-int/lit8 v6, v1, 0x4

    packed-switch v6, :pswitch_data_0

    .line 823
    :pswitch_0
    add-int/lit8 v6, v3, 0x1

    if-lt v6, p3, :cond_1

    .line 832
    .end local v1    # "ch":I
    :cond_0
    :goto_1
    return-object v5

    .line 809
    .restart local v1    # "ch":I
    :pswitch_1
    if-ge v3, p3, :cond_0

    .line 813
    and-int/lit8 v6, v1, 0x1f

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v3

    and-int/lit8 v7, v7, 0x3f

    or-int v1, v6, v7

    move v3, v4

    .line 830
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_2
    :pswitch_2
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .line 831
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 816
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :pswitch_3
    add-int/lit8 v6, v3, 0x2

    if-ge v6, p3, :cond_0

    .line 820
    and-int/lit8 v6, v1, 0xf

    shl-int/lit8 v6, v6, 0xc

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v3

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v7, p1, v4

    and-int/lit8 v7, v7, 0x3f

    or-int v1, v6, v7

    .line 821
    goto :goto_2

    .line 827
    :cond_1
    and-int/lit8 v6, v1, 0x3f

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v3

    and-int/lit8 v7, v7, 0xf

    or-int v1, v6, v7

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_2

    .line 832
    .end local v1    # "ch":I
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/i;)Ljava/util/Collection;
    .locals 10
    .param p1, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I
    .param p4, "localHost"    # Ljavax/jmdns/impl/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            "ZI",
            "Ljavax/jmdns/impl/i;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1223
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/g;>;"
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne p1, v0, :cond_2

    .line 1226
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1227
    new-instance v0, Ljavax/jmdns/impl/g$e;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_1
    new-instance v0, Ljavax/jmdns/impl/g$e;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    new-instance v0, Ljavax/jmdns/impl/g$f;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    iget v5, p0, Ljavax/jmdns/impl/m;->k:I

    iget v6, p0, Ljavax/jmdns/impl/m;->j:I

    iget v7, p0, Ljavax/jmdns/impl/m;->i:I

    invoke-virtual {p4}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v8

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/g$f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    new-instance v0, Ljavax/jmdns/impl/g$g;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v5

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g$g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_2
    return-object v9
.end method

.method a(Ljava/net/Inet4Address;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/Inet4Address;

    .prologue
    .line 501
    iget-object v0, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method a(Ljava/net/Inet6Address;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/Inet6Address;

    .prologue
    .line 509
    iget-object v0, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Ljavax/jmdns/impl/m;->c(Ljava/util/Map;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/m;->a([B)V

    .line 1254
    return-void
.end method

.method public a(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/a;)V
    .locals 10
    .param p1, "dnsCache"    # Ljavax/jmdns/impl/DNSCache;
    .param p2, "now"    # J
    .param p4, "rec"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 886
    instance-of v7, p4, Ljavax/jmdns/impl/g;

    if-eqz v7, :cond_2

    invoke-virtual {p4, p2, p3}, Ljavax/jmdns/impl/a;->b(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 887
    const/4 v4, 0x0

    .line 888
    .local v4, "serviceUpdated":Z
    sget-object v7, Ljavax/jmdns/impl/m$1;->a:[I

    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 941
    .end local p4    # "rec":Ljavax/jmdns/impl/a;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 942
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    .line 943
    .local v0, "dns":Ljavax/jmdns/impl/JmDNSImpl;
    if-eqz v0, :cond_1

    .line 947
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v7, v8, p0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 948
    .local v2, "event":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/ServiceEvent;)V

    .line 952
    .end local v0    # "dns":Ljavax/jmdns/impl/JmDNSImpl;
    .end local v2    # "event":Ljavax/jmdns/ServiceEvent;
    :cond_1
    monitor-enter p0

    .line 953
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 954
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    .end local v4    # "serviceUpdated":Z
    :cond_2
    return-void

    .line 890
    .restart local v4    # "serviceUpdated":Z
    .restart local p4    # "rec":Ljavax/jmdns/impl/a;
    :pswitch_0
    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 891
    iget-object v8, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    check-cast p4, Ljavax/jmdns/impl/g$a;

    .end local p4    # "rec":Ljavax/jmdns/impl/a;
    invoke-virtual {p4}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    const/4 v4, 0x1

    goto :goto_0

    .line 896
    .restart local p4    # "rec":Ljavax/jmdns/impl/a;
    :pswitch_1
    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 897
    iget-object v8, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    check-cast p4, Ljavax/jmdns/impl/g$a;

    .end local p4    # "rec":Ljavax/jmdns/impl/a;
    invoke-virtual {p4}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet6Address;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 898
    const/4 v4, 0x1

    goto :goto_0

    .line 902
    .restart local p4    # "rec":Ljavax/jmdns/impl/a;
    :pswitch_2
    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, p4

    .line 903
    check-cast v5, Ljavax/jmdns/impl/g$f;

    .line 904
    .local v5, "srv":Ljavax/jmdns/impl/g$f;
    iget-object v7, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 905
    .local v3, "serverChanged":Z
    :goto_1
    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->s()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    .line 906
    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->v()I

    move-result v7

    iput v7, p0, Ljavax/jmdns/impl/m;->i:I

    .line 907
    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->u()I

    move-result v7

    iput v7, p0, Ljavax/jmdns/impl/m;->j:I

    .line 908
    invoke-virtual {v5}, Ljavax/jmdns/impl/g$f;->t()I

    move-result v7

    iput v7, p0, Ljavax/jmdns/impl/m;->k:I

    .line 909
    if-eqz v3, :cond_6

    .line 910
    iget-object v7, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 911
    iget-object v7, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 912
    iget-object v7, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, v7, v8, v9}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/a;

    .line 913
    .local v1, "entry":Ljavax/jmdns/impl/a;
    invoke-virtual {p0, p1, p2, p3, v1}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/a;)V

    goto :goto_2

    .line 904
    .end local v1    # "entry":Ljavax/jmdns/impl/a;
    .end local v3    # "serverChanged":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 915
    .restart local v3    # "serverChanged":Z
    :cond_5
    iget-object v7, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, v7, v8, v9}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/a;

    .line 916
    .restart local v1    # "entry":Ljavax/jmdns/impl/a;
    invoke-virtual {p0, p1, p2, p3, v1}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/a;)V

    goto :goto_3

    .line 920
    .end local v1    # "entry":Ljavax/jmdns/impl/a;
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 925
    .end local v3    # "serverChanged":Z
    .end local v5    # "srv":Ljavax/jmdns/impl/g$f;
    :pswitch_3
    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, p4

    .line 926
    check-cast v6, Ljavax/jmdns/impl/g$g;

    .line 927
    .local v6, "txt":Ljavax/jmdns/impl/g$g;
    invoke-virtual {v6}, Ljavax/jmdns/impl/g$g;->s()[B

    move-result-object v7

    iput-object v7, p0, Ljavax/jmdns/impl/m;->l:[B

    .line 928
    const/4 v7, 0x0

    iput-object v7, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;

    .line 929
    const/4 v4, 0x1

    .line 930
    goto/16 :goto_0

    .line 933
    .end local v6    # "txt":Ljavax/jmdns/impl/g$g;
    :pswitch_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->D()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 934
    invoke-virtual {p4}, Ljavax/jmdns/impl/a;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljavax/jmdns/impl/m;->g:Ljava/lang/String;

    .line 935
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 954
    .end local p4    # "rec":Ljavax/jmdns/impl/a;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 888
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 1307
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/m$b;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1308
    return-void
.end method

.method a(Ljavax/jmdns/impl/m$a;)V
    .locals 0
    .param p1, "delegate"    # Ljavax/jmdns/impl/m$a;

    .prologue
    .line 1356
    iput-object p1, p0, Ljavax/jmdns/impl/m;->t:Ljavax/jmdns/impl/m$a;

    .line 1357
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "needTextAnnouncing"    # Z

    .prologue
    .line 1331
    iput-boolean p1, p0, Ljavax/jmdns/impl/m;->r:Z

    .line 1332
    iget-boolean v0, p0, Ljavax/jmdns/impl/m;->r:Z

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/m$b;->setTask(Ljavax/jmdns/impl/a/a;)V

    .line 1335
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 1
    .param p1, "text"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1241
    monitor-enter p0

    .line 1242
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/m;->l:[B

    .line 1243
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;

    .line 1244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/m;->a(Z)V

    .line 1245
    monitor-exit p0

    .line 1246
    return-void

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/jmdns/impl/m;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public advanceState(Ljavax/jmdns/impl/a/a;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 980
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/m$b;->advanceState(Ljavax/jmdns/impl/a/a;)Z

    move-result v0

    return v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 1028
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/m$b;->associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 1029
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 393
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->A()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->B()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->C()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "application":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method b([B)V
    .locals 1
    .param p1, "text"    # [B

    .prologue
    .line 1262
    iput-object p1, p0, Ljavax/jmdns/impl/m;->l:[B

    .line 1263
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/m;->m:Ljava/util/Map;

    .line 1264
    return-void
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->n()[Ljava/net/InetAddress;

    move-result-object v1

    .line 667
    .local v1, "addresses":[Ljava/net/InetAddress;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v5, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v0, v1, v6

    .line 669
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "hostAddress":Ljava/lang/String;
    instance-of v8, v0, Ljava/net/Inet6Address;

    if-eqz v8, :cond_0

    .line 671
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->q()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, "url":Ljava/lang/String;
    const-string v8, "path"

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 676
    const-string v8, "://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 677
    move-object v4, v3

    .line 682
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 679
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .end local v3    # "path":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .restart local v3    # "path":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 684
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "hostAddress":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->D()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "subtype":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "._sub."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public declared-synchronized c(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->G()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->cancelState()Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->H()Ljavax/jmdns/impl/m;

    move-result-object v0

    return-object v0
.end method

.method public closeState()Z
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->closeState()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Ljavax/jmdns/impl/m;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->G()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 707
    :goto_0
    monitor-exit p0

    return-object v1

    .line 704
    :cond_0
    :try_start_1
    sget-object v1, Ljavax/jmdns/impl/m;->a:[B

    if-ne v0, v1, :cond_1

    .line 705
    const-string v1, "true"

    goto :goto_0

    .line 707
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljavax/jmdns/impl/m;->a([BII)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 700
    .end local v0    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Ljavax/jmdns/impl/m;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/m;->p:Ljava/lang/String;

    .line 424
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/m;->p:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1124
    instance-of v0, p1, Ljavax/jmdns/impl/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljavax/jmdns/impl/m;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 7

    .prologue
    .line 443
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->A()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->B()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->C()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "application":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "instance":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    const-string v4, ""

    goto :goto_2
.end method

.method f(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Ljavax/jmdns/impl/m;->f:Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/m;->p:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method g(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Ljavax/jmdns/impl/m;->h:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->i()[Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1116
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 484
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->o()[Ljava/net/Inet4Address;

    move-result-object v1

    .line 485
    .local v1, "ip4Aaddresses":[Ljava/net/Inet4Address;
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->p()[Ljava/net/Inet6Address;

    move-result-object v2

    .line 486
    .local v2, "ip6Aaddresses":[Ljava/net/Inet6Address;
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v3, v4, [Ljava/lang/String;

    .line 487
    .local v3, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 488
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 491
    array-length v4, v1

    add-int/2addr v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_1
    return-object v3
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 1036
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/m$b;->isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->isProbing()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/net/InetAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->k()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/net/InetAddress;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->n()[Ljava/net/InetAddress;

    move-result-object v0

    .line 528
    .local v0, "addresses":[Ljava/net/InetAddress;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public l()Ljava/net/Inet4Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->o()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 538
    .local v0, "addresses":[Ljava/net/Inet4Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public m()Ljava/net/Inet6Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->p()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 548
    .local v0, "addresses":[Ljava/net/Inet6Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public n()[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 557
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 559
    iget-object v1, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 560
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    return-object v1
.end method

.method public o()[Ljava/net/Inet4Address;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/m;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public p()[Ljava/net/Inet6Address;
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/m;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Ljavax/jmdns/impl/m;->i:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Ljavax/jmdns/impl/m;->k:I

    return v0
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 1020
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/m$b;->removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V

    .line 1021
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0}, Ljavax/jmdns/impl/m$b;->revertState()Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Ljavax/jmdns/impl/m;->j:I

    return v0
.end method

.method public t()[B
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Ljavax/jmdns/impl/m;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->l:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/m;->l:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/g;->b:[B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    .local v2, "buf":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v5, "name: \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v5, "\' address: \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->n()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1178
    .local v1, "addresses":[Ljava/net/InetAddress;
    array-length v5, v1

    if-lez v5, :cond_1

    .line 1179
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 1180
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1181
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->q()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1183
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1179
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1175
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 1186
    .restart local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_1
    const-string v5, "(null):"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->q()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    :cond_2
    const-string v5, "\' status: \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-object v5, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v5}, Ljavax/jmdns/impl/m$b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->z()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\' is persistent,"

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    const-string v5, " has "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ""

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const-string v5, "data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_6

    .line 1198
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->G()Ljava/util/Map;

    move-result-object v4

    .line 1199
    .local v4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1200
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1202
    .local v3, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1191
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_3
    const-string v5, "\',"

    goto :goto_2

    .line 1193
    :cond_4
    const-string v5, "NO "

    goto :goto_3

    .line 1205
    .restart local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_5
    const-string v5, " empty"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .end local v4    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_6
    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public u()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->G()Ljava/util/Map;

    move-result-object v1

    .line 620
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 622
    .local v2, "value":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":[B
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 637
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/m;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1100
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/m$b;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1108
    iget-object v0, p0, Ljavax/jmdns/impl/m;->s:Ljavax/jmdns/impl/m$b;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/m$b;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method

.method public x()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->G()Ljava/util/Map;

    move-result-object v1

    .line 716
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 717
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2

    .line 716
    .end local v0    # "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1133
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v4

    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1134
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_1

    .line 1135
    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1138
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/m;->t()[B

    move-result-object v4

    aget-byte v4, v4, v2

    and-int/lit16 v1, v4, 0xff

    .line 1139
    .local v1, "ch":I
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-le v1, v4, :cond_3

    .line 1140
    :cond_2
    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1141
    const/16 v4, 0x8

    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1133
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    :cond_3
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Ljavax/jmdns/impl/m;->q:Z

    return v0
.end method
