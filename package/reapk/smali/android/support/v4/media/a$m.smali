.class Landroid/support/v4/media/a$m;
.super Landroid/support/v4/os/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/os/Bundle;

.field private final f:Landroid/support/v4/media/a$l;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$l;Landroid/os/Handler;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/support/v4/media/a$l;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1988
    invoke-direct {p0, p4}, Landroid/support/v4/os/m;-><init>(Landroid/os/Handler;)V

    .line 1989
    iput-object p1, p0, Landroid/support/v4/media/a$m;->d:Ljava/lang/String;

    .line 1990
    iput-object p2, p0, Landroid/support/v4/media/a$m;->e:Landroid/os/Bundle;

    .line 1991
    iput-object p3, p0, Landroid/support/v4/media/a$m;->f:Landroid/support/v4/media/a$l;

    .line 1992
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1996
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v3, "search_results"

    .line 1997
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1998
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/a$m;->f:Landroid/support/v4/media/a$l;

    iget-object v4, p0, Landroid/support/v4/media/a$m;->d:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/media/a$m;->e:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/a$l;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2011
    :goto_0
    return-void

    .line 2001
    :cond_1
    const-string v3, "search_results"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 2003
    .local v1, "items":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 2004
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    if-eqz v1, :cond_2

    .line 2005
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 2007
    .local v0, "item":Landroid/os/Parcelable;
    check-cast v0, Landroid/support/v4/media/a$k;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2006
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2010
    :cond_2
    iget-object v3, p0, Landroid/support/v4/media/a$m;->f:Landroid/support/v4/media/a$l;

    iget-object v4, p0, Landroid/support/v4/media/a$m;->d:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/media/a$m;->e:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/media/a$l;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0
.end method