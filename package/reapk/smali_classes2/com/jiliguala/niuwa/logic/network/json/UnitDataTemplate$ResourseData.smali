.class public Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourseData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _id:Ljava/lang/String;

.field public typ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->typ:Ljava/lang/String;

    .line 381
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 385
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
    .line 390
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;->typ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    return-void
.end method
