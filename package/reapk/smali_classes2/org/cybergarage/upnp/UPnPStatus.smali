.class public Lorg/cybergarage/upnp/UPnPStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_FAILED:I = 0x1f5

.field public static final INVALID_ACTION:I = 0x191

.field public static final INVALID_ARGS:I = 0x192

.field public static final INVALID_VAR:I = 0x194

.field public static final OUT_OF_SYNC:I = 0x193

.field public static final PRECONDITION_FAILED:I = 0x19c

.field public static final TRANSATION_NOT_AVAILABLE:I = 0x2bd


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 69
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 55
    invoke-static {p0}, Lorg/cybergarage/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 41
    :sswitch_0
    const-string v0, "Invalid Action"

    goto :goto_0

    .line 43
    :sswitch_1
    const-string v0, "Invalid Args"

    goto :goto_0

    .line 45
    :sswitch_2
    const-string v0, "Out of Sync"

    goto :goto_0

    .line 47
    :sswitch_3
    const-string v0, "Invalid Var"

    goto :goto_0

    .line 49
    :sswitch_4
    const-string v0, "Precondition Failed"

    goto :goto_0

    .line 51
    :sswitch_5
    const-string v0, "Action Failed"

    goto :goto_0

    .line 53
    :sswitch_6
    const-string v0, "Transation not Available"

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x19c -> :sswitch_4
        0x1f5 -> :sswitch_5
        0x2bd -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/cybergarage/upnp/UPnPStatus;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cybergarage/upnp/UPnPStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 85
    iput p1, p0, Lorg/cybergarage/upnp/UPnPStatus;->code:I

    .line 86
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/cybergarage/upnp/UPnPStatus;->description:Ljava/lang/String;

    .line 96
    return-void
.end method
