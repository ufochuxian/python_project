.class final Landroid/support/v7/app/AppCompatDelegateImplV9$c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/j",
        "<",
        "Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2102
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a$1;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2102
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a$1;->b(I)[Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2105
    invoke-static {p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    move-result-object v0

    return-object v0
.end method

.method public b(I)[Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2110
    new-array v0, p1, [Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    return-object v0
.end method
