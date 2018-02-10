.class public Ljavax/jmdns/impl/g$c;
.super Ljavax/jmdns/impl/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 176
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/g$a;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 177
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "rawAddress"    # [B

    .prologue
    .line 180
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/g$a;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 181
    return-void
.end method


# virtual methods
.method public a(Z)Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "persistent"    # Z

    .prologue
    .line 208
    invoke-super {p0, p1}, Ljavax/jmdns/impl/g$a;->a(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/m;

    .line 209
    .local v0, "info":Ljavax/jmdns/impl/m;
    iget-object v1, p0, Ljavax/jmdns/impl/g$c;->c:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/m;->a(Ljava/net/Inet4Address;)V

    .line 210
    return-object v0
.end method

.method a(Ljavax/jmdns/impl/e$a;)V
    .locals 6
    .param p1, "out"    # Ljavax/jmdns/impl/e$a;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 185
    iget-object v3, p0, Ljavax/jmdns/impl/g$c;->c:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Ljavax/jmdns/impl/g$c;->c:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 188
    .local v0, "buffer":[B
    iget-object v3, p0, Ljavax/jmdns/impl/g$c;->c:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 196
    :goto_0
    array-length v1, v0

    .line 197
    .local v1, "length":I
    invoke-virtual {p1, v0, v4, v1}, Ljavax/jmdns/impl/e$a;->a([BII)V

    .line 199
    .end local v0    # "buffer":[B
    .end local v1    # "length":I
    :cond_0
    return-void

    .line 192
    .restart local v0    # "buffer":[B
    :cond_1
    move-object v2, v0

    .line 193
    .local v2, "tempbuffer":[B
    new-array v0, v5, [B

    .line 194
    const/16 v3, 0xc

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
