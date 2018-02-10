.class public Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "helper"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 24
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->mHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .line 25
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "group"    # I
    .param p2, "child"    # I
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "group"    # I
    .param p2, "child"    # I

    .prologue
    .line 56
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "group"    # I
    .param p2, "child"    # I
    .param p3, "isExpanded"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    .line 92
    :cond_0
    sget-object v3, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ANGRY_MODE_TABS:[Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;->b()I

    move-result v1

    .line 93
    .local v1, "resourceId":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->mHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-virtual {v3, v2}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->configureAngryModeTab(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "group"    # I
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ANGRY_MODE_TABS:[Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "group"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 73
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "angry_mode_title"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p3

    .line 74
    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "view":Landroid/widget/TextView;
    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->ANGRY_MODE_TABS:[Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    .end local v1    # "view":Landroid/widget/TextView;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0054

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .restart local v1    # "view":Landroid/widget/TextView;
    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeListAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "group"    # I
    .param p2, "child"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
