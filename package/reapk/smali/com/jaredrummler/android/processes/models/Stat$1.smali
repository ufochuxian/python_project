.class final Lcom/jaredrummler/android/processes/models/Stat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/android/processes/models/Stat;
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
        "Lcom/jaredrummler/android/processes/models/Stat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jaredrummler/android/processes/models/Stat;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 637
    new-instance v0, Lcom/jaredrummler/android/processes/models/Stat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jaredrummler/android/processes/models/Stat;-><init>(Landroid/os/Parcel;Lcom/jaredrummler/android/processes/models/Stat$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/jaredrummler/android/processes/models/Stat;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 642
    new-array v0, p1, [Lcom/jaredrummler/android/processes/models/Stat;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/jaredrummler/android/processes/models/Stat$1;->a(Landroid/os/Parcel;)Lcom/jaredrummler/android/processes/models/Stat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/jaredrummler/android/processes/models/Stat$1;->a(I)[Lcom/jaredrummler/android/processes/models/Stat;

    move-result-object v0

    return-object v0
.end method
