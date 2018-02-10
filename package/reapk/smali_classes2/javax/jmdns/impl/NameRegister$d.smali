.class public Ljavax/jmdns/impl/NameRegister$d;
.super Ljavax/jmdns/impl/NameRegister$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljavax/jmdns/impl/NameRegister$a;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/NameRegister$d;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/NameRegister$d;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)V
    .locals 2
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 99
    sget-object v0, Ljavax/jmdns/impl/NameRegister$1;->a:[I

    invoke-virtual {p3}, Ljavax/jmdns/impl/NameRegister$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :pswitch_0
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Z
    .locals 6
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    sget-object v4, Ljavax/jmdns/impl/NameRegister$1;->a:[I

    invoke-virtual {p3}, Ljavax/jmdns/impl/NameRegister$NameType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 117
    :pswitch_0
    iget-object v4, p0, Ljavax/jmdns/impl/NameRegister$d;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, "hostname":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 120
    .end local v0    # "hostname":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Ljavax/jmdns/impl/NameRegister$d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 121
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;
    .locals 2
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 134
    sget-object v0, Ljavax/jmdns/impl/NameRegister$1;->a:[I

    invoke-virtual {p3}, Ljavax/jmdns/impl/NameRegister$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 136
    .restart local p2    # "name":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/NameRegister$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/NameRegister$d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
