.class public Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPart"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public done:Z

.field public fav:J

.field public reply:J

.field public sel:J

.field public thread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->done:Z

    .line 429
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$1;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 453
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 456
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
