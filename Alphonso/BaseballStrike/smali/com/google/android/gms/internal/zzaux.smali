.class final Lcom/google/android/gms/internal/zzaux;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic zzasK:Lcom/google/android/gms/internal/zzauw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaux;->zzasK:Lcom/google/android/gms/internal/zzauw;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaux;->zzasK:Lcom/google/android/gms/internal/zzauw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauw;->zzasJ:Lcom/google/android/gms/internal/zzauv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauv;->zza(Lcom/google/android/gms/internal/zzauv;)V

    return-void
.end method
