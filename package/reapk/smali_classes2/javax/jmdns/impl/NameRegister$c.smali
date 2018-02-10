.class public Ljavax/jmdns/impl/NameRegister$c;
.super Ljavax/jmdns/impl/NameRegister$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljavax/jmdns/impl/NameRegister$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)V
    .locals 2
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 155
    sget-object v0, Ljavax/jmdns/impl/NameRegister$1;->a:[I

    invoke-virtual {p3}, Ljavax/jmdns/impl/NameRegister$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Z
    .locals 3
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    const/4 v2, 0x0

    .line 171
    sget-object v0, Ljavax/jmdns/impl/NameRegister$1;->a:[I

    invoke-virtual {p3}, Ljavax/jmdns/impl/NameRegister$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    return v2

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;
    .locals 2
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 188
    sget-object v0, Ljavax/jmdns/impl/NameRegister$1;->a:[I

    invoke-virtual {p3}, Ljavax/jmdns/impl/NameRegister$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 190
    .restart local p2    # "name":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/NameRegister$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/NameRegister$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
