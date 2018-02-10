.class public abstract Ljavax/jmdns/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljavax/jmdns/impl/constants/DNSRecordType;

.field private final f:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljavax/jmdns/impl/a;->c:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ljavax/jmdns/impl/a;->e:Ljavax/jmdns/impl/constants/DNSRecordType;

    .line 45
    iput-object p3, p0, Ljavax/jmdns/impl/a;->f:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 46
    iput-boolean p4, p0, Ljavax/jmdns/impl/a;->g:Z

    .line 47
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/jmdns/impl/m;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    .line 48
    iget-object v4, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "domain":Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, "protocol":Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "application":Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "instance":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

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

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

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

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/a;->d:Ljava/lang/String;

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/a;->b:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_0
    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 53
    :cond_2
    const-string v4, ""

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->h()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "subtype":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "subtype":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "subtype":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dout"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 244
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 246
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 314
    return-void
.end method

.method public abstract a(J)Z
.end method

.method public a(Ljavax/jmdns/impl/a;)Z
    .locals 2
    .param p1, "entry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z
    .locals 2
    .param p1, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;

    .prologue
    .line 97
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v0, p1, :cond_0

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/impl/constants/DNSRecordType;)Z
    .locals 1
    .param p1, "recordType"    # Ljavax/jmdns/impl/constants/DNSRecordType;

    .prologue
    .line 107
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/jmdns/impl/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public abstract b(J)Z
.end method

.method public b(Ljavax/jmdns/impl/a;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 87
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/jmdns/impl/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c(Ljavax/jmdns/impl/a;)Z
    .locals 2
    .param p1, "entry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/jmdns/impl/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d(Ljavax/jmdns/impl/a;)Z
    .locals 2
    .param p1, "entry"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljavax/jmdns/impl/a;)I
    .locals 6
    .param p1, "that"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 272
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->n()[B

    move-result-object v3

    .line 273
    .local v3, "thisBytes":[B
    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->n()[B

    move-result-object v2

    .line 274
    .local v2, "thatBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, v3

    array-length v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 275
    aget-byte v4, v3, v0

    aget-byte v5, v2, v0

    if-le v4, v5, :cond_0

    .line 276
    const/4 v4, 0x1

    .line 281
    :goto_1
    return v4

    .line 277
    :cond_0
    aget-byte v4, v3, v0

    aget-byte v5, v2, v0

    if-ge v4, v5, :cond_1

    .line 278
    const/4 v4, -0x1

    goto :goto_1

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    array-length v4, v3

    array-length v5, v2

    sub-int/2addr v4, v5

    goto :goto_1
.end method

.method public e()Ljavax/jmdns/impl/constants/DNSRecordType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljavax/jmdns/impl/a;->e:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a;->e:Ljavax/jmdns/impl/constants/DNSRecordType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "result":Z
    instance-of v2, p1, Ljavax/jmdns/impl/a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 64
    check-cast v0, Ljavax/jmdns/impl/a;

    .line 65
    .local v0, "other":Ljavax/jmdns/impl/a;
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 67
    .end local v0    # "other":Ljavax/jmdns/impl/a;
    :cond_0
    :goto_0
    return v1

    .line 65
    .restart local v0    # "other":Ljavax/jmdns/impl/a;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public f()Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljavax/jmdns/impl/a;->f:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a;->f:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Ljavax/jmdns/impl/a;->g:Z

    return v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
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
    .line 167
    iget-object v0, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dns-sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_services"

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

.method public j()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v1, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "dns-sd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, "name":Ljava/lang/String;
    const-string v1, "b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "db"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 185
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 183
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 185
    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "in-addr.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Ljavax/jmdns/impl/a;->a:Ljava/util/Map;

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ip6.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected n()[B
    .locals 4

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 257
    .local v1, "dout":Ljava/io/DataOutputStream;
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/a;->a(Ljava/io/DataOutputStream;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 259
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 260
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dout":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v0, "aLog":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/a;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-boolean v1, p0, Ljavax/jmdns/impl/a;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "-unique,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/a;->a(Ljava/lang/StringBuilder;)V

    .line 305
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    :cond_0
    const-string v1, ","

    goto :goto_0
.end method
