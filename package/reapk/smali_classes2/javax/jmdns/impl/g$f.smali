.class public Ljavax/jmdns/impl/g$f;
.super Ljavax/jmdns/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field private static c:Ljava/util/logging/Logger;


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 642
    const-class v0, Ljavax/jmdns/impl/g$f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "priority"    # I
    .param p6, "weight"    # I
    .param p7, "port"    # I
    .param p8, "server"    # Ljava/lang/String;

    .prologue
    .line 649
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 650
    iput p5, p0, Ljavax/jmdns/impl/g$f;->d:I

    .line 651
    iput p6, p0, Ljavax/jmdns/impl/g$f;->e:I

    .line 652
    iput p7, p0, Ljavax/jmdns/impl/g$f;->f:I

    .line 653
    iput-object p8, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    .line 654
    return-void
.end method


# virtual methods
.method public a(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "persistent"    # Z

    .prologue
    .line 813
    new-instance v0, Ljavax/jmdns/impl/m;

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->h()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/g$f;->f:I

    iget v3, p0, Ljavax/jmdns/impl/g$f;->e:I

    iget v4, p0, Ljavax/jmdns/impl/g$f;->d:I

    const/4 v6, 0x0

    check-cast v6, [B

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/b;Ljava/net/InetAddress;ILjavax/jmdns/impl/e;)Ljavax/jmdns/impl/e;
    .locals 10
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
    const/4 v3, 0x1

    .line 797
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/jmdns/impl/m;

    .line 798
    .local v9, "info":Ljavax/jmdns/impl/m;
    if-eqz v9, :cond_0

    .line 799
    iget v0, p0, Ljavax/jmdns/impl/g$f;->f:I

    invoke-virtual {v9}, Ljavax/jmdns/impl/m;->q()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 800
    new-instance v0, Ljavax/jmdns/impl/g$f;

    invoke-virtual {v9}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/16 v4, 0xe10

    invoke-virtual {v9}, Ljavax/jmdns/impl/m;->r()I

    move-result v5

    invoke-virtual {v9}, Ljavax/jmdns/impl/m;->s()I

    move-result v6

    invoke-virtual {v9}, Ljavax/jmdns/impl/m;->q()I

    move-result v7

    .line 801
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/g$f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    .line 800
    invoke-virtual/range {v1 .. v6}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;ILjavax/jmdns/impl/e;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;

    move-result-object p5

    .line 804
    .end local p5    # "out":Ljavax/jmdns/impl/e;
    :cond_0
    return-object p5

    .line 799
    .restart local p5    # "out":Ljavax/jmdns/impl/e;
    :cond_1
    const/4 v0, 0x0

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
    .line 675
    invoke-super {p0, p1}, Ljavax/jmdns/impl/g;->a(Ljava/io/DataOutputStream;)V

    .line 676
    iget v0, p0, Ljavax/jmdns/impl/g$f;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 677
    iget v0, p0, Ljavax/jmdns/impl/g$f;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 678
    iget v0, p0, Ljavax/jmdns/impl/g$f;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 680
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 844
    invoke-super {p0, p1}, Ljavax/jmdns/impl/g;->a(Ljava/lang/StringBuilder;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " server: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/jmdns/impl/g$f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    return-void
.end method

.method a(Ljavax/jmdns/impl/e$a;)V
    .locals 3
    .param p1, "out"    # Ljavax/jmdns/impl/e$a;

    .prologue
    const/4 v2, 0x0

    .line 658
    iget v0, p0, Ljavax/jmdns/impl/g$f;->d:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 659
    iget v0, p0, Ljavax/jmdns/impl/g$f;->e:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 660
    iget v0, p0, Ljavax/jmdns/impl/g$f;->f:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/e$a;->b(I)V

    .line 661
    sget-boolean v0, Ljavax/jmdns/impl/b;->a:Z

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/e$a;->a(Ljava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    iget-object v1, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/e$a;->b(Ljava/lang/String;II)V

    .line 669
    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/e$a;->a(I)V

    goto :goto_0
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 6
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 777
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/m;

    .line 778
    .local v0, "info":Ljavax/jmdns/impl/m;
    if-eqz v0, :cond_2

    iget v2, p0, Ljavax/jmdns/impl/g$f;->f:I

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->q()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 779
    :cond_0
    sget-object v2, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    const-string v3, "handleResponse() Denial detected"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->isProbing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "oldName":Ljava/lang/String;
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$b;->a()Ljavax/jmdns/impl/NameRegister;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v2, v3, v4, v5}, Ljavax/jmdns/impl/NameRegister;->c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/m;->f(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v2, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse() New unique name chose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 789
    .end local v1    # "oldName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljavax/jmdns/impl/m;->revertState()Z

    .line 790
    const/4 v2, 0x1

    .line 792
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 13
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    .line 727
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/jmdns/impl/m;

    .line 728
    .local v11, "info":Ljavax/jmdns/impl/m;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->isAnnouncing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->isAnnounced()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget v1, p0, Ljavax/jmdns/impl/g$f;->f:I

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->q()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 729
    :cond_1
    sget-object v1, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQuery() Conflicting probe detected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->q()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljavax/jmdns/impl/g$f;

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/16 v4, 0xe10

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->r()I

    move-result v5

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->s()I

    move-result v6

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->q()I

    move-result v7

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/i;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/g$f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 734
    .local v0, "localService":Ljavax/jmdns/impl/g$f;
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->d()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->q()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    sget-object v1, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got conflicting probe from ourselves\nincoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "local   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/g$f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/g$f;->e(Ljavax/jmdns/impl/a;)I

    move-result v9

    .line 743
    .local v9, "comparison":I
    if-nez v9, :cond_3

    .line 748
    sget-object v1, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    const-string v2, "handleQuery() Ignoring a identical service query"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 749
    const/4 v1, 0x0

    .line 772
    .end local v0    # "localService":Ljavax/jmdns/impl/g$f;
    .end local v9    # "comparison":I
    :goto_1
    return v1

    .line 737
    .restart local v0    # "localService":Ljavax/jmdns/impl/g$f;
    :catch_0
    move-exception v10

    .line 738
    .local v10, "e":Ljava/io/IOException;
    sget-object v1, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "IOException"

    invoke-virtual {v1, v2, v3, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 753
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v9    # "comparison":I
    :cond_3
    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->isProbing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez v9, :cond_4

    .line 755
    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 756
    .local v12, "oldName":Ljava/lang/String;
    invoke-static {}, Ljavax/jmdns/impl/NameRegister$b;->a()Ljavax/jmdns/impl/NameRegister;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/i;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-interface {v1, v2, v3, v4}, Ljavax/jmdns/impl/NameRegister;->c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljavax/jmdns/impl/m;->f(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->w()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v1, Ljavax/jmdns/impl/g$f;->c:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQuery() Lost tie break: new unique name chosen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v11}, Ljavax/jmdns/impl/m;->revertState()Z

    .line 769
    const/4 v1, 0x1

    goto :goto_1

    .line 766
    .end local v12    # "oldName":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 772
    .end local v0    # "localService":Ljavax/jmdns/impl/g$f;
    .end local v9    # "comparison":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method a(Ljavax/jmdns/impl/g;)Z
    .locals 4
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    const/4 v1, 0x0

    .line 713
    instance-of v2, p1, Ljavax/jmdns/impl/g$f;

    if-nez v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 716
    check-cast v0, Ljavax/jmdns/impl/g$f;

    .line 717
    .local v0, "s":Ljavax/jmdns/impl/g$f;
    iget v2, p0, Ljavax/jmdns/impl/g$f;->d:I

    iget v3, v0, Ljavax/jmdns/impl/g$f;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljavax/jmdns/impl/g$f;->e:I

    iget v3, v0, Ljavax/jmdns/impl/g$f;->e:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljavax/jmdns/impl/g$f;->f:I

    iget v3, v0, Ljavax/jmdns/impl/g$f;->f:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 822
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/g$f;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    .line 823
    check-cast v1, Ljavax/jmdns/impl/m;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 834
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    return v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Ljavax/jmdns/impl/g$f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Ljavax/jmdns/impl/g$f;->d:I

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Ljavax/jmdns/impl/g$f;->e:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Ljavax/jmdns/impl/g$f;->f:I

    return v0
.end method
