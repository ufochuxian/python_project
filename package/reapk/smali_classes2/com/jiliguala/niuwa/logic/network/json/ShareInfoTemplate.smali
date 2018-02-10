.class public Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->code:I

    .line 31
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
