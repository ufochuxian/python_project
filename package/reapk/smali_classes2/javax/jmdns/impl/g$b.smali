.class public Ljavax/jmdns/impl/g$b;
.super Ljavax/jmdns/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "cpu"    # Ljava/lang/String;
    .param p6, "os"    # Ljava/lang/String;

    .prologue
    .line 863
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_HINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 864
    iput-object p5, p0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    .line 865
    iput-object p6, p0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    .line 866
    return-void
.end method


# virtual methods
.method public a(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 939
    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 940
    .local v6, "hinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "cpu"

    iget-object v1, p0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string v0, "os"

    iget-object v1, p0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    new-instance v0, Ljavax/jmdns/impl/m;

    invoke-virtual {p0}, Ljavax/jmdns/impl/g$b;->h()Ljava/util/Map;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/m;-><init>(Ljava/util/Map;IIIZLjava/util/Map;)V

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
    .line 874
    return-object p5
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 962
    invoke-super {p0, p1}, Ljavax/jmdns/impl/g;->a(Ljava/lang/StringBuilder;)V

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cpu: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' os: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    return-void
.end method

.method a(Ljavax/jmdns/impl/e$a;)V
    .locals 3
    .param p1, "out"    # Ljavax/jmdns/impl/e$a;

    .prologue
    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "hostInfo":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljavax/jmdns/impl/e$a;->b(Ljava/lang/String;II)V

    .line 931
    return-void
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method a(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method a(Ljavax/jmdns/impl/g;)Z
    .locals 4
    .param p1, "other"    # Ljavax/jmdns/impl/g;

    .prologue
    const/4 v1, 0x0

    .line 901
    instance-of v2, p1, Ljavax/jmdns/impl/g$b;

    if-nez v2, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 904
    check-cast v0, Ljavax/jmdns/impl/g$b;

    .line 905
    .local v0, "hinfo":Ljavax/jmdns/impl/g$b;
    iget-object v2, p0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 908
    :cond_2
    iget-object v2, p0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 911
    :cond_3
    iget-object v2, p0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/g$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/g$b;->c:Ljava/lang/String;

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
    .line 951
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/g$b;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    .line 952
    check-cast v1, Ljavax/jmdns/impl/m;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 953
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
    .line 920
    const/4 v0, 0x1

    return v0
.end method
