.class final Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
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
        "Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 15
    new-instance v0, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 20
    new-array v0, p1, [Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket$1;->a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket$1;->a(I)[Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v0

    return-object v0
.end method
