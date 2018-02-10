.class Lnet/simonvt/datepicker/DatePicker$b;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/simonvt/datepicker/DatePicker$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 798
    new-instance v0, Lnet/simonvt/datepicker/DatePicker$b$1;

    invoke-direct {v0}, Lnet/simonvt/datepicker/DatePicker$b$1;-><init>()V

    sput-object v0, Lnet/simonvt/datepicker/DatePicker$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 826
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->a:I

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->b:I

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->c:I

    .line 830
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/simonvt/datepicker/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lnet/simonvt/datepicker/DatePicker$1;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lnet/simonvt/datepicker/DatePicker$b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 816
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 817
    iput p2, p0, Lnet/simonvt/datepicker/DatePicker$b;->a:I

    .line 818
    iput p3, p0, Lnet/simonvt/datepicker/DatePicker$b;->b:I

    .line 819
    iput p4, p0, Lnet/simonvt/datepicker/DatePicker$b;->c:I

    .line 820
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILnet/simonvt/datepicker/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lnet/simonvt/datepicker/DatePicker$1;

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/simonvt/datepicker/DatePicker$b;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/datepicker/DatePicker$b;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker$b;

    .prologue
    .line 794
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->a:I

    return v0
.end method

.method static synthetic b(Lnet/simonvt/datepicker/DatePicker$b;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker$b;

    .prologue
    .line 794
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->b:I

    return v0
.end method

.method static synthetic c(Lnet/simonvt/datepicker/DatePicker$b;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/datepicker/DatePicker$b;

    .prologue
    .line 794
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->c:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 834
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 835
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker$b;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    return-void
.end method
