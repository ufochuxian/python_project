.class public Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public done:Z

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->done:Z

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->done:Z

    .line 35
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->done:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->text:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->url:Ljava/lang/String;

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 26
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
