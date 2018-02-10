.class public Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;,
        Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->code:I

    .line 44
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$DataPart;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    return-void
.end method
