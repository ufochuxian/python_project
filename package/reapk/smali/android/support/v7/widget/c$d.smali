.class final Landroid/support/v7/widget/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# static fields
.field private static final b:F = 0.95f


# instance fields
.field final synthetic a:Landroid/support/v7/widget/c;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v7/widget/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/c;)V
    .locals 1

    .prologue
    .line 921
    iput-object p1, p0, Landroid/support/v7/widget/c$d;->a:Landroid/support/v7/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c$d;->c:Ljava/util/Map;

    .line 922
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/c$e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$b;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$e;>;"
    iget-object v3, p0, Landroid/support/v7/widget/c$d;->c:Ljava/util/Map;

    .line 928
    .local v3, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/support/v7/widget/c$b;>;"
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 930
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 931
    .local v1, "activityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 932
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c$b;

    .line 933
    .local v0, "activity":Landroid/support/v7/widget/c$b;
    const/4 v8, 0x0

    iput v8, v0, Landroid/support/v7/widget/c$b;->b:F

    .line 934
    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 940
    .end local v0    # "activity":Landroid/support/v7/widget/c$b;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 941
    .local v6, "lastShareIndex":I
    const/high16 v7, 0x3f800000    # 1.0f

    .line 942
    .local v7, "nextRecordWeight":F
    move v5, v6

    :goto_1
    if-ltz v5, :cond_2

    .line 943
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/c$e;

    .line 944
    .local v4, "historicalRecord":Landroid/support/v7/widget/c$e;
    iget-object v2, v4, Landroid/support/v7/widget/c$e;->a:Landroid/content/ComponentName;

    .line 945
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c$b;

    .line 946
    .restart local v0    # "activity":Landroid/support/v7/widget/c$b;
    if-eqz v0, :cond_1

    .line 947
    iget v8, v0, Landroid/support/v7/widget/c$b;->b:F

    iget v9, v4, Landroid/support/v7/widget/c$e;->c:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, v0, Landroid/support/v7/widget/c$b;->b:F

    .line 948
    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v7, v8

    .line 942
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 952
    .end local v0    # "activity":Landroid/support/v7/widget/c$b;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "historicalRecord":Landroid/support/v7/widget/c$e;
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 959
    return-void
.end method
