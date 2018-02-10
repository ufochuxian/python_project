.class Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;

.field final synthetic c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;ILcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    iput p2, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->a:I

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->b:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->access$000(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->stop()V

    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->access$102(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;I)I

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->access$100(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Position"

    iget v2, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "URL"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->b:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Banner Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->access$200(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->b:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Banner;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    .end local v0    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->access$000(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->start()V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter$1;->c:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->access$000(Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->start()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
