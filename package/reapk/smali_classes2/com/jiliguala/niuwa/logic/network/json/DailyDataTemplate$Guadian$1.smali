.class final Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;
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
        "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 89
    new-array v0, p1, [Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian$1;->a(Landroid/os/Parcel;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian$1;->a(I)[Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    move-result-object v0

    return-object v0
.end method
