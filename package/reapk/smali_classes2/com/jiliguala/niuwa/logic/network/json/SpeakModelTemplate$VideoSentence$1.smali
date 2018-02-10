.class final Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;-><init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence$1;->a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence$1;->a(I)[Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    move-result-object v0

    return-object v0
.end method
