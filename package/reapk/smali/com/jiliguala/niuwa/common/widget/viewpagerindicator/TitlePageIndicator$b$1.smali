.class final Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;
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
        "Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 866
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;-><init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 871
    new-array v0, p1, [Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b$1;->a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b$1;->a(I)[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;

    move-result-object v0

    return-object v0
.end method
