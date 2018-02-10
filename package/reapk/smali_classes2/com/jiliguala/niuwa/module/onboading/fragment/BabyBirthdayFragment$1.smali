.class Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/datepicker/DatePicker$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/simonvt/datepicker/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Lnet/simonvt/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    invoke-static {v0, p2, p3, p4}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;III)V

    .line 111
    return-void
.end method
