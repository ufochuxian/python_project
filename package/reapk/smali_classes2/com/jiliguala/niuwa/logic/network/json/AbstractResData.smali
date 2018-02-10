.class public abstract Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public _id:Ljava/lang/String;

.field public downloadStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    return-void
.end method


# virtual methods
.method protected readParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    .line 25
    return-void
.end method

.method protected writeParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    return-void
.end method
