.class Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 863
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 852
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;->a:I

    .line 854
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$1;

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 848
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 849
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 858
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 859
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    return-void
.end method
