.class public Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x15302f4e366efdc0L


# instance fields
.field public _id:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

.field public status:Ljava/lang/String;

.field public typ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->pic:Ljava/lang/String;

    .line 334
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    .line 335
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    const-string v1, "completed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    const-string v1, "locked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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
    .line 344
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->resource:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$ResourseData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 349
    return-void
.end method
