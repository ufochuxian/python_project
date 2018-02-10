.class public Lcn/sharesdk/tencent/qq/QQWebShareAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private noTitle:Z

.field private rlBody:Landroid/widget/RelativeLayout;

.field private title:Lcn/sharesdk/framework/TitleLayout;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBodyView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->rlBody:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleLayout()Lcn/sharesdk/framework/TitleLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->title:Lcn/sharesdk/framework/TitleLayout;

    return-object v0
.end method

.method public getWebBody()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method isNotitle()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->noTitle:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->activity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method setBodyView(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "rlBody"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->rlBody:Landroid/widget/RelativeLayout;

    .line 60
    return-void
.end method

.method setNotitle(Z)V
    .locals 0
    .param p1, "noTitle"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->noTitle:Z

    .line 52
    return-void
.end method

.method setTitleView(Lcn/sharesdk/framework/TitleLayout;)V
    .locals 0
    .param p1, "title"    # Lcn/sharesdk/framework/TitleLayout;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->title:Lcn/sharesdk/framework/TitleLayout;

    .line 34
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQWebShareAdapter;->webview:Landroid/webkit/WebView;

    .line 43
    return-void
.end method
