.class final Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;
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
        "Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 113
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;-><init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 125
    new-array v0, p1, [Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart$1;->a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart$1;->a(I)[Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate$SubPart;

    move-result-object v0

    return-object v0
.end method
