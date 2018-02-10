.class public Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPart"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _id:Ljava/lang/String;

.field public noscore:Z

.field public sentences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;",
            ">;"
        }
    .end annotation
.end field

.field public typ:Ljava/lang/String;

.field public videourl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->noscore:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->videourl:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->typ:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    sget-object v1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 112
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->noscore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->videourl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->typ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;->sentences:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 140
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
