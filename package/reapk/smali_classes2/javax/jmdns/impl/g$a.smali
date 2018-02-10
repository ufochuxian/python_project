.class public abstract Ljavax/jmdns/impl/g$a;
.super Ljavax/jmdns/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static d:Ljava/util/logging/Logger;


# instance fields
.field c:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    const-class v0, Ljavax/jmdns/impl/g$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/g$a;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z
    .param p5, "ttl"    # I
    .param p6, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 269
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 270
    iput-object p6, p0, Ljavax/jmdns/impl/g$a;->c:Ljava/net/InetAddress;

    .line 271
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z
    .param p5, "ttl"    # I
    .param p6, "rawAddress"    # [B

    .prologue
    .line 274
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 276
    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/g$a;->c:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "exception":Ljava/net/UnknownHostException;
    sget-object v1, Ljavax/jmdns/impl/g$a;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Address() exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 396
    new-instance v0, Ljavax/jmdns/impl/m;

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->h()Ljava/util/Map;

    move-result-object v1

    const/4 v6, 0x0

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 398
    .local v0, "info":Ljavax/jmdns/impl/m;
    return-object v0
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/b;Ljava/net/InetAddress;ILjavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 0
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "in"    # Ljavax/jmdns/impl/b;
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .param p5, "out"    # Ljavax/jmdns/impl/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    return-object p5
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "dout"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Ljavax/jmdns/impl/g;->a(Ljava/io/DataOutputStream;)V

    .line 320
    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 321
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 322
    aget-byte v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 418
    invoke-super {p0, p1}, Ljavax/jmdns/impl/g;->a(Ljava/lang/StringBuilder;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    return-void

    .line 419
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 368
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/g$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    sget-object v2, Ljavax/jmdns/impl/g$a;->d:Ljava/util/logging/Logger;

    const-string v3, "handleResponse() Denial detected"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/i;->f()Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 374
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .local v1, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v0, v1

    .line 375
    check-cast v0, Ljavax/jmdns/impl/m;

    .line 376
    .local v0, "info":Ljavax/jmdns/impl/m;
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->revertState()Z

    goto :goto_0

    .line 379
    .end local v0    # "info":Ljavax/jmdns/impl/m;
    .end local v1    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    .line 380
    const/4 v2, 0x1

    .line 382
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 9
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/g$a;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v5

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->e()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v6

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->g()Z

    move-result v7

    const/16 v8, 0xe10

    invoke-virtual {v5, v6, v7, v8}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/g$a;

    move-result-object v2

    .line 333
    .local v2, "localAddress":Ljavax/jmdns/impl/g$a;
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/g$a;->e(Ljavax/jmdns/impl/a;)I

    move-result v0

    .line 336
    .local v0, "comparison":I
    if-nez v0, :cond_1

    .line 341
    sget-object v5, Ljavax/jmdns/impl/g$a;->d:Ljava/util/logging/Logger;

    const-string v6, "handleQuery() Ignoring an identical address query"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 360
    .end local v0    # "comparison":I
    .end local v2    # "localAddress":Ljavax/jmdns/impl/g$a;
    :cond_0
    :goto_0
    return v4

    .line 345
    .restart local v0    # "comparison":I
    .restart local v2    # "localAddress":Ljavax/jmdns/impl/g$a;
    :cond_1
    sget-object v4, Ljavax/jmdns/impl/g$a;->d:Ljava/util/logging/Logger;

    const-string v5, "handleQuery() Conflicting query detected."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v4

    if-eqz v4, :cond_2

    if-lez v0, :cond_2

    .line 349
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/i;->f()Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->r()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 351
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceInfo;

    .local v3, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v1, v3

    .line 352
    check-cast v1, Ljavax/jmdns/impl/m;

    .line 353
    .local v1, "info":Ljavax/jmdns/impl/m;
    invoke-virtual {v1}, Ljavax/jmdns/impl/m;->revertState()Z

    goto :goto_1

    .line 356
    .end local v1    # "info":Ljavax/jmdns/impl/m;
    .end local v3    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    :cond_2
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    .line 357
    const/4 v4, 0x1

    goto :goto_0
.end method

.method a(Ljavax/jmdns/impl/g;)Z
    .locals 3
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    const/4 v1, 0x0

    .line 295
    instance-of v2, p1, Ljavax/jmdns/impl/g$a;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 298
    check-cast v0, Ljavax/jmdns/impl/g$a;

    .line 299
    .local v0, "address":Ljavax/jmdns/impl/g$a;
    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/jmdns/impl/g$a;->s()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 407
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/g$a;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    .line 408
    check-cast v1, Ljavax/jmdns/impl/m;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 409
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method e(Ljavax/jmdns/impl/g;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    const/4 v0, 0x0

    .line 283
    instance-of v1, p1, Ljavax/jmdns/impl/g$a;

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/g$a;->f(Ljavax/jmdns/impl/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/g$a;->a(Ljavax/jmdns/impl/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method f(Ljavax/jmdns/impl/g;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    .line 290
    invoke-virtual {p0}, Ljavax/jmdns/impl/g$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method s()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Ljavax/jmdns/impl/g$a;->c:Ljava/net/InetAddress;

    return-object v0
.end method
