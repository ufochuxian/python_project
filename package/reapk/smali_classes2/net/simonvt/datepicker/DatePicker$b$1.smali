.class final Lnet/simonvt/datepicker/DatePicker$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/datepicker/DatePicker$b;
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
        "Lnet/simonvt/datepicker/DatePicker$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lnet/simonvt/datepicker/DatePicker$b;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 801
    new-instance v0, Lnet/simonvt/datepicker/DatePicker$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/simonvt/datepicker/DatePicker$b;-><init>(Landroid/os/Parcel;Lnet/simonvt/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public a(I)[Lnet/simonvt/datepicker/DatePicker$b;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 805
    new-array v0, p1, [Lnet/simonvt/datepicker/DatePicker$b;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePicker$b$1;->a(Landroid/os/Parcel;)Lnet/simonvt/datepicker/DatePicker$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePicker$b$1;->a(I)[Lnet/simonvt/datepicker/DatePicker$b;

    move-result-object v0

    return-object v0
.end method
