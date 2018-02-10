.class public Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPart"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public banner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;",
            ">;"
        }
    .end annotation
.end field

.field public guadian:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->banner:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    .line 32
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->banner:Ljava/util/ArrayList;

    .line 33
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->banner:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 45
    return-void
.end method
