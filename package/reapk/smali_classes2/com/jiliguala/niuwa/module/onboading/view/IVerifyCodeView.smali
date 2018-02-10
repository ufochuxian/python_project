.class public interface abstract Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/base/e;


# virtual methods
.method public abstract getActivityRef()Landroid/app/Activity;
.end method

.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract onVerificationCodeCorrect()V
.end method

.method public abstract onVerificationCodeError()V
.end method

.method public abstract requestVoiceSmsSuccess()V
.end method

.method public abstract requestVoiceSmsWithNoAuthSuccess()V
.end method

.method public abstract updateCodeEditText(Ljava/lang/String;)V
.end method
