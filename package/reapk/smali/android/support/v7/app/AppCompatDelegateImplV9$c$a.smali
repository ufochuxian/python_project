.class Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2100
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a$1;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a$1;-><init>()V

    .line 2101
    invoke-static {v0}, Landroid/support/v4/os/i;->a(Landroid/support/v4/os/j;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2100
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2071
    return-void
.end method

.method static a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x1

    .line 2089
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;-><init>()V

    .line 2090
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:I

    .line 2091
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->b:Z

    .line 2093
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->b:Z

    if-eqz v1, :cond_0

    .line 2094
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->c:Landroid/os/Bundle;

    .line 2097
    :cond_0
    return-object v0

    .line 2091
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2075
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2080
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->b:Z

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2086
    :cond_0
    return-void

    .line 2081
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
