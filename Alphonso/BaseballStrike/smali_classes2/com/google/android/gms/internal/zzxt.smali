.class final Lcom/google/android/gms/internal/zzxt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzQW:Lcom/google/android/gms/internal/zzxs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxt;->zzQW:Lcom/google/android/gms/internal/zzxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzQW:Lcom/google/android/gms/internal/zzxs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxs;->onStop()V

    return-void
.end method