.class public Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagPart"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dis:Ljava/lang/String;

.field public tagid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->tagid:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->dis:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static generateFakePart()Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;-><init>()V

    .line 114
    .local v0, "tag":Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;
    const/4 v1, -0x1

    iput v1, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->tagid:I

    .line 115
    const-string v1, "\u5168\u90e8"

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->dis:Ljava/lang/String;

    .line 116
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->tagid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BoardListTemplate$TagPart;->dis:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
